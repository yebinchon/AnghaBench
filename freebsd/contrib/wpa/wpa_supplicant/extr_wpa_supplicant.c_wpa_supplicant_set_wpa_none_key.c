
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int group_cipher; } ;
struct wpa_ssid {scalar_t__ mode; int psk; int psk_set; } ;
typedef int key ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 int MSG_INFO ;
 scalar_t__ WPAS_MODE_IBSS ;
 int WPA_ALG_CCMP ;
 int WPA_ALG_GCMP ;
 int WPA_ALG_TKIP ;



 int os_memcpy (int *,int ,int) ;
 int os_memset (int *,int ,int) ;
 int wpa_drv_set_key (struct wpa_supplicant*,int,int *,int ,int,int *,int,int *,size_t) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,...) ;

int wpa_supplicant_set_wpa_none_key(struct wpa_supplicant *wpa_s,
        struct wpa_ssid *ssid)
{
 u8 key[32];
 size_t keylen;
 enum wpa_alg alg;
 u8 seq[6] = { 0 };
 int ret;




 if (ssid->mode != WPAS_MODE_IBSS) {
  wpa_msg(wpa_s, MSG_INFO, "WPA: Invalid mode %d (not "
   "IBSS/ad-hoc) for WPA-None", ssid->mode);
  return -1;
 }

 if (!ssid->psk_set) {
  wpa_msg(wpa_s, MSG_INFO, "WPA: No PSK configured for "
   "WPA-None");
  return -1;
 }

 switch (wpa_s->group_cipher) {
 case 130:
  os_memcpy(key, ssid->psk, 16);
  keylen = 16;
  alg = WPA_ALG_CCMP;
  break;
 case 129:
  os_memcpy(key, ssid->psk, 16);
  keylen = 16;
  alg = WPA_ALG_GCMP;
  break;
 case 128:

  os_memcpy(key, ssid->psk, 16 + 8);
  os_memcpy(key + 16 + 8, ssid->psk + 16, 8);
  keylen = 32;
  alg = WPA_ALG_TKIP;
  break;
 default:
  wpa_msg(wpa_s, MSG_INFO, "WPA: Invalid group cipher %d for "
   "WPA-None", wpa_s->group_cipher);
  return -1;
 }




 ret = wpa_drv_set_key(wpa_s, alg, ((void*)0), 0, 1, seq, 6, key, keylen);
 os_memset(key, 0, sizeof(key));
 return ret;
}
