
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSG_INFO ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_ssid(const u8 *ssid, size_t ssid_len, int mandatory)
{
 if (ssid == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: SSID "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (ssid_len == 0 || ssid[ssid_len - 1] == 0) {
  wpa_hexdump_ascii(MSG_INFO, "WPS-STRICT: Invalid SSID "
      "attribute value", ssid, ssid_len);
  return -1;
 }
 return 0;
}
