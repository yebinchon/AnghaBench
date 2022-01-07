
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_credential {size_t ssid_len; size_t key_len; int key; void* encr_type; int auth_type; int ssid; } ;
struct hostapd_data {TYPE_1__* wps; } ;
typedef int cred ;
struct TYPE_2__ {int registrar; } ;


 int WPS_AUTH_OPEN ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 void* WPS_ENCR_AES ;
 void* WPS_ENCR_NONE ;
 void* WPS_ENCR_TKIP ;
 scalar_t__ hexstr2bin (char const*,int ,size_t) ;
 int os_memset (struct wps_credential*,int ,int) ;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char*,int) ;
 int wps_registrar_config_ap (int ,struct wps_credential*) ;

int hostapd_wps_config_ap(struct hostapd_data *hapd, const char *ssid,
     const char *auth, const char *encr, const char *key)
{
 struct wps_credential cred;
 size_t len;

 os_memset(&cred, 0, sizeof(cred));

 len = os_strlen(ssid);
 if ((len & 1) || len > 2 * sizeof(cred.ssid) ||
     hexstr2bin(ssid, cred.ssid, len / 2))
  return -1;
 cred.ssid_len = len / 2;

 if (os_strncmp(auth, "OPEN", 4) == 0)
  cred.auth_type = WPS_AUTH_OPEN;
 else if (os_strncmp(auth, "WPAPSK", 6) == 0)
  cred.auth_type = WPS_AUTH_WPAPSK;
 else if (os_strncmp(auth, "WPA2PSK", 7) == 0)
  cred.auth_type = WPS_AUTH_WPA2PSK;
 else
  return -1;

 if (encr) {
  if (os_strncmp(encr, "NONE", 4) == 0)
   cred.encr_type = WPS_ENCR_NONE;
  else if (os_strncmp(encr, "TKIP", 4) == 0)
   cred.encr_type = WPS_ENCR_TKIP;
  else if (os_strncmp(encr, "CCMP", 4) == 0)
   cred.encr_type = WPS_ENCR_AES;
  else
   return -1;
 } else
  cred.encr_type = WPS_ENCR_NONE;

 if (key) {
  len = os_strlen(key);
  if ((len & 1) || len > 2 * sizeof(cred.key) ||
      hexstr2bin(key, cred.key, len / 2))
   return -1;
  cred.key_len = len / 2;
 }

 return wps_registrar_config_ap(hapd->wps->registrar, &cred);
}
