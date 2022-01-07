
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_ssid {int disabled; size_t ssid_len; scalar_t__ mode; size_t num_p2p_clients; int const* p2p_client_list; int const* bssid; int const* ssid; struct wpa_ssid* next; } ;
struct TYPE_2__ {struct wpa_ssid* ssid; } ;


 size_t ETH_ALEN ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ os_memcmp (int const*,int const*,size_t) ;

struct wpa_ssid * wpas_p2p_get_persistent(struct wpa_supplicant *wpa_s,
       const u8 *addr, const u8 *ssid,
       size_t ssid_len)
{
 struct wpa_ssid *s;
 size_t i;

 for (s = wpa_s->conf->ssid; s; s = s->next) {
  if (s->disabled != 2)
   continue;
  if (ssid &&
      (ssid_len != s->ssid_len ||
       os_memcmp(ssid, s->ssid, ssid_len) != 0))
   continue;
  if (addr == ((void*)0)) {
   if (s->mode == WPAS_MODE_P2P_GO)
    return s;
   continue;
  }
  if (os_memcmp(s->bssid, addr, ETH_ALEN) == 0)
   return s;
  if (s->mode != WPAS_MODE_P2P_GO || s->p2p_client_list == ((void*)0))
   continue;
  for (i = 0; i < s->num_p2p_clients; i++) {
   if (os_memcmp(s->p2p_client_list + i * 2 * ETH_ALEN,
          addr, ETH_ALEN) == 0)
    return s;

  }
 }

 return ((void*)0);
}
