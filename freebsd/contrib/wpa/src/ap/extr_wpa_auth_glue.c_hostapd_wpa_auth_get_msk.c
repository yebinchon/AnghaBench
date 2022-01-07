
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int eapol_sm; } ;
struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int * ieee802_1x_get_key (int ,size_t*) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int hostapd_wpa_auth_get_msk(void *ctx, const u8 *addr, u8 *msk,
        size_t *len)
{
 struct hostapd_data *hapd = ctx;
 const u8 *key;
 size_t keylen;
 struct sta_info *sta;

 sta = ap_get_sta(hapd, addr);
 if (sta == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "AUTH_GET_MSK: Cannot find STA");
  return -1;
 }

 key = ieee802_1x_get_key(sta->eapol_sm, &keylen);
 if (key == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "AUTH_GET_MSK: Key is null, eapol_sm: %p",
      sta->eapol_sm);
  return -1;
 }

 if (keylen > *len)
  keylen = *len;
 os_memcpy(msk, key, keylen);
 *len = keylen;

 return 0;
}
