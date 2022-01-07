
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ BOOL ;


 int BIND_SUBKEY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetSystemDirectory (scalar_t__,int ) ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ Initialized ;
 int KEY_READ ;
 int MAX_PATH ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyEx (int ,int ,int ,int ,int *) ;
 scalar_t__ RegQueryValueEx (int ,char*,int *,int *,int ,int *) ;
 scalar_t__ TRUE ;
 int baseLen ;
 scalar_t__ local_state_dir ;
 scalar_t__ lwresd_confFile ;
 scalar_t__ lwresd_defaultpidfile ;
 scalar_t__ lwresd_resolvconfFile ;
 int memset (scalar_t__,int ,int ) ;
 scalar_t__ namedBase ;
 scalar_t__ ns_confFile ;
 scalar_t__ ns_defaultpidfile ;
 scalar_t__ rndc_confFile ;
 scalar_t__ rndc_keyFile ;
 scalar_t__ session_keyFile ;
 int strcat (scalar_t__,char*) ;
 int strcpy (scalar_t__,scalar_t__) ;
 scalar_t__ sys_conf_dir ;
 scalar_t__ systemDir ;

void
isc_ntpaths_init() {
 HKEY hKey;
 BOOL keyFound = TRUE;

 memset(namedBase, 0, MAX_PATH);
 if (RegOpenKeyEx(HKEY_LOCAL_MACHINE, BIND_SUBKEY, 0, KEY_READ, &hKey)
  != ERROR_SUCCESS)
  keyFound = FALSE;

 if (keyFound == TRUE) {

  if (RegQueryValueEx(hKey, "InstallDir", ((void*)0), ((void*)0),
   (LPBYTE)namedBase, &baseLen) != ERROR_SUCCESS)
   keyFound = FALSE;
  RegCloseKey(hKey);
 }

 GetSystemDirectory(systemDir, MAX_PATH);

 if (keyFound == FALSE)

  strcpy(namedBase, systemDir);

 strcpy(ns_confFile, namedBase);
 strcat(ns_confFile, "\\etc\\named.conf");

 strcpy(lwresd_confFile, namedBase);
 strcat(lwresd_confFile, "\\etc\\lwresd.conf");

 strcpy(lwresd_resolvconfFile, systemDir);
 strcat(lwresd_resolvconfFile, "\\Drivers\\etc\\resolv.conf");

 strcpy(rndc_keyFile, namedBase);
 strcat(rndc_keyFile, "\\etc\\rndc.key");

 strcpy(session_keyFile, namedBase);
 strcat(session_keyFile, "\\etc\\session.key");

 strcpy(rndc_confFile, namedBase);
 strcat(rndc_confFile, "\\etc\\rndc.conf");
 strcpy(ns_defaultpidfile, namedBase);
 strcat(ns_defaultpidfile, "\\etc\\named.pid");

 strcpy(lwresd_defaultpidfile, namedBase);
 strcat(lwresd_defaultpidfile, "\\etc\\lwresd.pid");

 strcpy(local_state_dir, namedBase);
 strcat(local_state_dir, "\\bin");

 strcpy(sys_conf_dir, namedBase);
 strcat(sys_conf_dir, "\\etc");

 Initialized = TRUE;
}
