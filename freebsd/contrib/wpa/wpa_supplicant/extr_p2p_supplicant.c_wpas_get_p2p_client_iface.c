
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int go_dev_addr; struct wpa_ssid* current_ssid; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct wpa_ssid {scalar_t__ mode; int p2p_group; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 int ETH_ALEN ;
 scalar_t__ WPAS_MODE_INFRA ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

struct wpa_supplicant * wpas_get_p2p_client_iface(struct wpa_supplicant *wpa_s,
        const u8 *peer_dev_addr)
{
 for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  struct wpa_ssid *ssid = wpa_s->current_ssid;
  if (ssid && (ssid->mode != WPAS_MODE_INFRA || !ssid->p2p_group))
   continue;
  if (os_memcmp(wpa_s->go_dev_addr, peer_dev_addr, ETH_ALEN) == 0)
   return wpa_s;
 }

 return ((void*)0);
}
