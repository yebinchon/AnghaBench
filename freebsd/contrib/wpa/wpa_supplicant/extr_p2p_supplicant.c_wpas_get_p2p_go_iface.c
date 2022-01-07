
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {struct wpa_ssid* current_ssid; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct wpa_ssid {scalar_t__ mode; size_t ssid_len; int ssid; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 scalar_t__ WPAS_MODE_AP ;
 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ WPAS_MODE_P2P_GROUP_FORMATION ;
 scalar_t__ os_memcmp (int const*,int ,size_t) ;

struct wpa_supplicant * wpas_get_p2p_go_iface(struct wpa_supplicant *wpa_s,
           const u8 *ssid, size_t ssid_len)
{
 for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  struct wpa_ssid *s = wpa_s->current_ssid;
  if (s == ((void*)0))
   continue;
  if (s->mode != WPAS_MODE_P2P_GO &&
      s->mode != WPAS_MODE_AP &&
      s->mode != WPAS_MODE_P2P_GROUP_FORMATION)
   continue;
  if (s->ssid_len != ssid_len ||
      os_memcmp(ssid, s->ssid, ssid_len) != 0)
   continue;
  return wpa_s;
 }

 return ((void*)0);

}
