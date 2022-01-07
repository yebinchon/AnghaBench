
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {struct wpa_ssid* current_ssid; TYPE_2__* conf; struct wpa_supplicant* next; TYPE_1__* global; } ;
struct wpa_ssid {scalar_t__ disabled; size_t ssid_len; scalar_t__ mode; int ssid; int p2p_group; struct wpa_ssid* next; } ;
struct TYPE_4__ {struct wpa_ssid* ssid; } ;
struct TYPE_3__ {struct wpa_supplicant* ifaces; } ;


 scalar_t__ WPAS_MODE_P2P_GO ;
 scalar_t__ os_memcmp (int const*,int ,size_t) ;

__attribute__((used)) static struct wpa_supplicant * wpas_get_p2p_group(struct wpa_supplicant *wpa_s,
        const u8 *ssid,
        size_t ssid_len, int *go)
{
 struct wpa_ssid *s;

 for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  for (s = wpa_s->conf->ssid; s; s = s->next) {
   if (s->disabled != 0 || !s->p2p_group ||
       s->ssid_len != ssid_len ||
       os_memcmp(ssid, s->ssid, ssid_len) != 0)
    continue;
   if (s->mode == WPAS_MODE_P2P_GO &&
       s != wpa_s->current_ssid)
    continue;
   if (go)
    *go = s->mode == WPAS_MODE_P2P_GO;
   return wpa_s;
  }
 }

 return ((void*)0);
}
