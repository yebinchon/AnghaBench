
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Initialized ;
 int isc_ntpaths_init () ;
 char* local_state_dir ;
 char* lwresd_confFile ;
 char* lwresd_defaultpidfile ;
 char* lwresd_resolvconfFile ;
 char* ns_confFile ;
 char* ns_defaultpidfile ;
 char* rndc_confFile ;
 char* rndc_keyFile ;
 char* session_keyFile ;
 char* sys_conf_dir ;

char *
isc_ntpaths_get(int ind) {
 if (!Initialized)
  isc_ntpaths_init();

 switch (ind) {
 case 134:
  return (ns_confFile);
  break;
 case 135:
  return (lwresd_confFile);
  break;
 case 132:
  return (lwresd_resolvconfFile);
  break;
 case 131:
  return (rndc_confFile);
  break;
 case 133:
  return (ns_defaultpidfile);
  break;
 case 136:
  return (lwresd_defaultpidfile);
  break;
 case 137:
  return (local_state_dir);
  break;
 case 128:
  return (sys_conf_dir);
  break;
 case 130:
  return (rndc_keyFile);
  break;
 case 129:
  return (session_keyFile);
  break;
 default:
  return (((void*)0));
 }
}
