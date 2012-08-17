; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MinGW
#define MyAppName "Cute Chess"
#define MyAppVersion "1.0"
#define MyAppPublisher "Ilari Pihlajisto, Arto Jonsson"
#define MyAppURL "https://github.com/cutechess/cutechess"
#define MyAppExeName "cutechess.exe"
#define MinGWLibPath "C:\QtSDK\mingw\bin"
#define QtLibPath "C:\QtSDK\Desktop\Qt\4.8.1\mingw\lib"
#define CuteChessPath "C:\cutechess"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7E0A39B7-4347-4A27-86CF-20E521C86E7C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\cutechess
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
OutputDir=.
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#CuteChessPath}\projects\gui\cutechess.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#CuteChessPath}\projects\cli\cutechess-cli.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#CuteChessPath}\projects\lib\cutechess.dll"; DestDir: "{app}"; Flags: ignoreversion
#ifdef MinGW
  Source: "{#MinGWLibPath}\mingwm10.dll"; DestDir: "{app}"; Flags: ignoreversion
  Source: "{#MinGWLibPath}\libgcc_s_dw2-1.dll"; DestDir: "{app}"; Flags: ignoreversion
#endif
Source: "{#QtLibPath}\QtCore4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#QtLibPath}\QtGui4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#QtLibPath}\QtSvg4.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\cutechess.exe"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\cutechess.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
