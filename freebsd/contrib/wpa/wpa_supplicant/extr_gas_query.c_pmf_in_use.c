
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {scalar_t__ wpa_state; int wpa; int bssid; int * current_ssid; } ;


 int ETH_ALEN ;
 scalar_t__ WPA_4WAY_HANDSHAKE ;
 scalar_t__ os_memcmp (int const*,int ,int ) ;
 int wpa_sm_pmf_enabled (int ) ;

int pmf_in_use(struct wpa_supplicant *wpa_s, const u8 *addr)
{
 if (wpa_s->current_ssid == ((void*)0) ||
     wpa_s->wpa_state < WPA_4WAY_HANDSHAKE ||
     os_memcmp(addr, wpa_s->bssid, ETH_ALEN) != 0)
  return 0;
 return wpa_sm_pmf_enabled(wpa_s->wpa);
}
