
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; int p2pdev; } ;
struct TYPE_2__ {scalar_t__ p2p_fail_on_wps_complete; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,int ,int *) ;
 int eloop_register_timeout (int ,int ,int ,int ,int *) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_group_formation_timeout ;

__attribute__((used)) static void wpas_p2p_grpform_fail_after_wps(struct wpa_supplicant *wpa_s)
{
 wpa_printf(MSG_DEBUG, "P2P: Reject group formation due to WPS provisioning failure");
 eloop_cancel_timeout(wpas_p2p_group_formation_timeout,
        wpa_s->p2pdev, ((void*)0));
 eloop_register_timeout(0, 0, wpas_p2p_group_formation_timeout,
          wpa_s->p2pdev, ((void*)0));
 wpa_s->global->p2p_fail_on_wps_complete = 0;
}
