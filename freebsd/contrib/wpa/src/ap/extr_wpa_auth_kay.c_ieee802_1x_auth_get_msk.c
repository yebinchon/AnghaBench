
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int eapol_sm; } ;
struct hostapd_data {int dummy; } ;


 int MSG_DEBUG ;
 int * ieee802_1x_get_key (int ,size_t*) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ieee802_1x_auth_get_msk(struct hostapd_data *hapd,
       struct sta_info *sta, u8 *msk, size_t *len)
{
 const u8 *key;
 size_t keylen;

 if (!sta->eapol_sm)
  return -1;

 key = ieee802_1x_get_key(sta->eapol_sm, &keylen);
 if (key == ((void*)0)) {
  wpa_printf(MSG_DEBUG,
      "MACsec: Failed to get MSK from EAPOL state machines");
  return -1;
 }
 wpa_printf(MSG_DEBUG, "MACsec: Successfully fetched key (len=%lu)",
     (unsigned long) keylen);
 wpa_hexdump_key(MSG_DEBUG, "MSK: ", key, keylen);

 if (keylen > *len)
  keylen = *len;
 os_memcpy(msk, key, keylen);
 *len = keylen;

 return 0;
}
