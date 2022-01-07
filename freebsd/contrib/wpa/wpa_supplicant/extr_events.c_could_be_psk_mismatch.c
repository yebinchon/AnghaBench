
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct wpa_supplicant {scalar_t__ wpa_state; int key_mgmt; } ;


 scalar_t__ WLAN_REASON_IE_IN_4WAY_DIFFERS ;
 scalar_t__ WPA_4WAY_HANDSHAKE ;
 int wpa_key_mgmt_wpa_psk (int ) ;

__attribute__((used)) static int could_be_psk_mismatch(struct wpa_supplicant *wpa_s, u16 reason_code,
     int locally_generated)
{
 if (wpa_s->wpa_state != WPA_4WAY_HANDSHAKE ||
     !wpa_key_mgmt_wpa_psk(wpa_s->key_mgmt))
  return 0;







 if (locally_generated) {
  if (reason_code == WLAN_REASON_IE_IN_4WAY_DIFFERS)
   return 0;
 }

 return 1;
}
