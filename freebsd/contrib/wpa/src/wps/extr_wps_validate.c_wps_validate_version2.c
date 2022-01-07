
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_version2(const u8 *version2, int mandatory)
{
 if (version2 == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Version2 attribute "
       "missing");
   return -1;
  }
  return 0;
 }
 if (*version2 < 0x20) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Version2 attribute "
      "value 0x%x", *version2);
  return -1;
 }
 return 0;
}
