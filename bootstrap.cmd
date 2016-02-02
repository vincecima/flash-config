@echo off

SET DIR=%~dp0%

::download install.ps1
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "((new-object net.webclient).DownloadFile('https://chocolatey.org/install.ps1','install.ps1'))"
::run installer
%systemroot%\System32\WindowsPowerShell\v1.0\powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%DIR%install.ps1' %*"

::install packages via choco
choco install -y ^
1password ^
7zip ^
atom ^
crashplan ^
dropbox ^
googlechrome ^
handbrake ^
lockhunter ^
mpc-hc ^
plex-home-theater ^
plexmediaserver ^
qbittorrent ^
sharpkeys ^
slack ^
spotify ^
sumatrapdf ^
vagrant ^
windirstat ^
you-need-a-budget

::install private packages
.\WinSplit-Revolution-v11.04.exe /S
