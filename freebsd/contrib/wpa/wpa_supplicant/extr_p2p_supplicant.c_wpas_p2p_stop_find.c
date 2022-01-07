
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int pending_group_iface_for_p2ps; } ;


 int wpas_p2p_remove_pending_group_interface (struct wpa_supplicant*) ;
 int wpas_p2p_stop_find_oper (struct wpa_supplicant*) ;

void wpas_p2p_stop_find(struct wpa_supplicant *wpa_s)
{
 wpas_p2p_stop_find_oper(wpa_s);
 if (!wpa_s->global->pending_group_iface_for_p2ps)
  wpas_p2p_remove_pending_group_interface(wpa_s);
}
