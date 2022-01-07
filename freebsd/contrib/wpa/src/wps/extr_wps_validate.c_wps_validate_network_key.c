
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSG_INFO ;
 scalar_t__ WPA_GET_BE16 (scalar_t__ const*) ;
 scalar_t__ WPS_ENCR_WEP ;
 int wpa_hexdump_ascii_key (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_network_key(const u8 *key, size_t key_len,
        const u8 *encr_type, int mandatory)
{
 if (key == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Network Key "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (((encr_type == ((void*)0) || WPA_GET_BE16(encr_type) != WPS_ENCR_WEP) &&
      key_len > 8 && key_len < 64 && key[key_len - 1] == 0) ||
     key_len > 64) {
  wpa_hexdump_ascii_key(MSG_INFO, "WPS-STRICT: Invalid Network "
          "Key attribute value", key, key_len);
  return -1;
 }
 return 0;
}
