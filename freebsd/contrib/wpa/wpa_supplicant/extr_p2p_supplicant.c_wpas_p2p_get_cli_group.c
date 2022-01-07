
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {struct wpa_supplicant* next; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* ifaces; } ;


 scalar_t__ p2p_is_active_persistent_cli (struct wpa_supplicant*) ;

__attribute__((used)) static struct wpa_supplicant *
wpas_p2p_get_cli_group(struct wpa_supplicant *wpa_s)
{
 for (wpa_s = wpa_s->global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (p2p_is_active_persistent_cli(wpa_s))
   return wpa_s;
 }

 return ((void*)0);
}
