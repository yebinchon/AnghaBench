
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ p2p_in_provisioning; TYPE_1__* global; int ap_iface; } ;
struct TYPE_2__ {scalar_t__ p2p_fail_on_wps_complete; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_printf (int ,char*,char*) ;
 int wpas_p2p_group_idle_timeout ;
 int wpas_p2p_grpform_fail_after_wps (struct wpa_supplicant*) ;
 int wpas_p2p_set_group_idle_timeout (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_p2p_idle_update(void *ctx, int idle)
{
 struct wpa_supplicant *wpa_s = ctx;
 if (!wpa_s->ap_iface)
  return;
 wpa_printf(MSG_DEBUG, "P2P: GO - group %sidle", idle ? "" : "not ");
 if (idle) {
  if (wpa_s->global->p2p_fail_on_wps_complete &&
      wpa_s->p2p_in_provisioning) {
   wpas_p2p_grpform_fail_after_wps(wpa_s);
   return;
  }
  wpas_p2p_set_group_idle_timeout(wpa_s);
 } else
  eloop_cancel_timeout(wpas_p2p_group_idle_timeout, wpa_s, ((void*)0));
}
