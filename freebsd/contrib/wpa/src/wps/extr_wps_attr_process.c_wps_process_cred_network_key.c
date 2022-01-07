
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {scalar_t__ auth_type; scalar_t__ encr_type; size_t key_len; int key; } ;


 int MSG_DEBUG ;
 scalar_t__ WPS_AUTH_OPEN ;
 scalar_t__ WPS_ENCR_NONE ;
 int os_memcpy (int ,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_cred_network_key(struct wps_credential *cred,
     const u8 *key, size_t key_len)
{
 if (key == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Credential did not include "
      "Network Key");
  if (cred->auth_type == WPS_AUTH_OPEN &&
      cred->encr_type == WPS_ENCR_NONE) {
   wpa_printf(MSG_DEBUG, "WPS: Workaround - Allow "
       "missing mandatory Network Key attribute "
       "for open network");
   return 0;
  }
  return -1;
 }

 wpa_hexdump_key(MSG_DEBUG, "WPS: Network Key", key, key_len);
 if (key_len <= sizeof(cred->key)) {
  os_memcpy(cred->key, key, key_len);
  cred->key_len = key_len;
 }

 return 0;
}
