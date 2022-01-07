
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_config_error(const u8 *config_error, int mandatory)
{
 u16 val;

 if (config_error == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Configuration Error "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 val = WPA_GET_BE16(config_error);
 if (val > 20) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Configuration Error "
      "attribute value 0x%04x", val);
  return -1;
 }
 return 0;
}
