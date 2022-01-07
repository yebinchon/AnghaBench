
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int auth_type; int key_len; scalar_t__* key; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 scalar_t__ has_ctrl_char (scalar_t__*,int) ;
 int wpa_hexdump_ascii_key (int ,char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_workaround_cred_key(struct wps_credential *cred)
{
 if (cred->auth_type & (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK) &&
     cred->key_len > 8 && cred->key_len < 64 &&
     cred->key[cred->key_len - 1] == 0) {
  wpa_printf(MSG_DEBUG, "WPS: Workaround - remove NULL "
      "termination from ASCII passphrase");
  cred->key_len--;

 }


 if (cred->auth_type & (WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK) &&
     (cred->key_len < 8 || has_ctrl_char(cred->key, cred->key_len))) {
  wpa_printf(MSG_INFO, "WPS: Reject credential with invalid WPA/WPA2-Personal passphrase");
  wpa_hexdump_ascii_key(MSG_INFO, "WPS: Network Key",
          cred->key, cred->key_len);
  return -1;
 }

 return 0;
}
