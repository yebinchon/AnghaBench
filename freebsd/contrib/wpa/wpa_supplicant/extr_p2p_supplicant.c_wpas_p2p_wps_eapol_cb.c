
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int p2p_in_provisioning; TYPE_1__* global; } ;
struct TYPE_2__ {int p2p_fail_on_wps_complete; } ;


 int wpas_p2p_grpform_fail_after_wps (struct wpa_supplicant*) ;

int wpas_p2p_wps_eapol_cb(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->global->p2p_fail_on_wps_complete ||
     !wpa_s->p2p_in_provisioning)
  return 0;

 wpas_p2p_grpform_fail_after_wps(wpa_s);

 return 1;
}
