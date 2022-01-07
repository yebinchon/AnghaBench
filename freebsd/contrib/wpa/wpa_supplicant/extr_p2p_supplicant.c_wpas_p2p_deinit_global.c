
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_group_interface; scalar_t__ ap_iface; struct wpa_supplicant* next; } ;
struct wpa_global {int * p2p_init_wpa_s; int * p2p; struct wpa_supplicant* ifaces; } ;


 scalar_t__ NOT_P2P_GROUP_INTERFACE ;
 int p2p_deinit (int *) ;
 int wpas_p2p_disconnect (struct wpa_supplicant*) ;
 int wpas_p2p_group_deinit (struct wpa_supplicant*) ;
 int wpas_p2p_service_flush (int *) ;

__attribute__((used)) static void wpas_p2p_deinit_global(struct wpa_global *global)
{
 struct wpa_supplicant *wpa_s, *tmp;

 wpa_s = global->ifaces;

 wpas_p2p_service_flush(global->p2p_init_wpa_s);


 while (wpa_s && wpa_s->p2p_group_interface != NOT_P2P_GROUP_INTERFACE)
  wpa_s = wpa_s->next;
 while (wpa_s) {
  tmp = global->ifaces;
  while (tmp &&
         (tmp == wpa_s ||
   tmp->p2p_group_interface == NOT_P2P_GROUP_INTERFACE)) {
   tmp = tmp->next;
  }
  if (tmp == ((void*)0))
   break;

  wpas_p2p_disconnect(tmp);
 }





 for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
  if (wpa_s->ap_iface)
   wpas_p2p_group_deinit(wpa_s);
 }

 p2p_deinit(global->p2p);
 global->p2p = ((void*)0);
 global->p2p_init_wpa_s = ((void*)0);
}
