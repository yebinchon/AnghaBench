
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int p2p_go_group_formation_completed; TYPE_2__* global; scalar_t__ p2p_in_invitation; scalar_t__ p2p_in_provisioning; int group_formation_reported; int p2pdev; } ;
struct TYPE_3__ {scalar_t__ sec; } ;
struct TYPE_4__ {TYPE_1__ p2p_go_wait_client; int * p2p_group_formation; scalar_t__ p2p; } ;


 int MSG_DEBUG ;
 scalar_t__ eloop_cancel_timeout (int ,int ,int *) ;
 int p2p_wps_success_cb (scalar_t__,int const*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_printf (int ,char*) ;
 int wpas_group_formation_completed (struct wpa_supplicant*,int,int ) ;
 int wpas_p2p_add_persistent_group_client (struct wpa_supplicant*,int const*) ;
 int wpas_p2p_group_formation_timeout ;

void wpas_p2p_notify_ap_sta_authorized(struct wpa_supplicant *wpa_s,
           const u8 *addr)
{
 if (eloop_cancel_timeout(wpas_p2p_group_formation_timeout,
     wpa_s->p2pdev, ((void*)0)) > 0) {
  wpa_printf(MSG_DEBUG, "P2P: Canceled P2P group formation timeout on data connection");

  if (!wpa_s->p2p_go_group_formation_completed &&
      !wpa_s->group_formation_reported) {







   if (wpa_s->global->p2p)
    p2p_wps_success_cb(wpa_s->global->p2p, addr);
   wpas_group_formation_completed(wpa_s, 1, 0);
  }
 }
 if (!wpa_s->p2p_go_group_formation_completed) {
  wpa_dbg(wpa_s, MSG_DEBUG, "P2P: Marking group formation completed on GO on first data connection");
  wpa_s->p2p_go_group_formation_completed = 1;
  wpa_s->global->p2p_group_formation = ((void*)0);
  wpa_s->p2p_in_provisioning = 0;
  wpa_s->p2p_in_invitation = 0;
 }
 wpa_s->global->p2p_go_wait_client.sec = 0;
 if (addr == ((void*)0))
  return;
 wpas_p2p_add_persistent_group_client(wpa_s, addr);
}
