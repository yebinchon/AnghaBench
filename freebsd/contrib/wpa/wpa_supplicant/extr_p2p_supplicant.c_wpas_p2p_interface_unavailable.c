
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* current_ssid; } ;
struct TYPE_2__ {int p2p_group; } ;


 int MSG_DEBUG ;
 int P2P_GROUP_REMOVAL_UNAVAILABLE ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_group_delete (struct wpa_supplicant*,int ) ;

void wpas_p2p_interface_unavailable(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->current_ssid == ((void*)0) || !wpa_s->current_ssid->p2p_group)
  return;

 wpa_printf(MSG_DEBUG, "P2P: Remove group due to driver resource not "
     "being available anymore");
 wpas_p2p_group_delete(wpa_s, P2P_GROUP_REMOVAL_UNAVAILABLE);
}
