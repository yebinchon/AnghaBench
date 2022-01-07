
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_version(const u8 *version, int mandatory)
{
 if (version == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Version attribute "
       "missing");
   return -1;
  }
  return 0;
 }
 if (*version != 0x10) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Version attribute "
      "value 0x%x", *version);
  return -1;
 }
 return 0;
}
