
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {size_t ssid_len; size_t key_len; int key; int encr_type; int auth_type; int ssid; } ;


 int MSG_DEBUG ;
 int WPS_AUTH_OPEN ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_NONE ;
 int WPS_ENCR_TKIP ;
 int WPS_ENCR_WEP ;
 scalar_t__ hexstr2bin (char const*,int ,size_t) ;
 int os_memset (struct wps_credential*,int ,int) ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 char* os_strstr (char const*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_wsc_new_ap_settings(struct wps_credential *cred,
       const char *params)
{
 const char *pos, *end;
 size_t len;

 os_memset(cred, 0, sizeof(*cred));

 pos = os_strstr(params, "new_ssid=");
 if (pos == ((void*)0))
  return 0;
 pos += 9;
 end = os_strchr(pos, ' ');
 if (end == ((void*)0))
  len = os_strlen(pos);
 else
  len = end - pos;
 if ((len & 1) || len > 2 * sizeof(cred->ssid) ||
     hexstr2bin(pos, cred->ssid, len / 2)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Invalid new_ssid");
  return -1;
 }
 cred->ssid_len = len / 2;

 pos = os_strstr(params, "new_auth=");
 if (pos == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Missing new_auth");
  return -1;
 }
 if (os_strncmp(pos + 9, "OPEN", 4) == 0)
  cred->auth_type = WPS_AUTH_OPEN;
 else if (os_strncmp(pos + 9, "WPAPSK", 6) == 0)
  cred->auth_type = WPS_AUTH_WPAPSK;
 else if (os_strncmp(pos + 9, "WPA2PSK", 7) == 0)
  cred->auth_type = WPS_AUTH_WPA2PSK;
 else {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Unknown new_auth");
  return -1;
 }

 pos = os_strstr(params, "new_encr=");
 if (pos == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Missing new_encr");
  return -1;
 }
 if (os_strncmp(pos + 9, "NONE", 4) == 0)
  cred->encr_type = WPS_ENCR_NONE;




 else if (os_strncmp(pos + 9, "TKIP", 4) == 0)
  cred->encr_type = WPS_ENCR_TKIP;
 else if (os_strncmp(pos + 9, "CCMP", 4) == 0)
  cred->encr_type = WPS_ENCR_AES;
 else {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Unknown new_encr");
  return -1;
 }

 pos = os_strstr(params, "new_key=");
 if (pos == ((void*)0))
  return 0;
 pos += 8;
 end = os_strchr(pos, ' ');
 if (end == ((void*)0))
  len = os_strlen(pos);
 else
  len = end - pos;
 if ((len & 1) || len > 2 * sizeof(cred->key) ||
     hexstr2bin(pos, cred->key, len / 2)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Invalid new_key");
  return -1;
 }
 cred->key_len = len / 2;

 return 1;
}
