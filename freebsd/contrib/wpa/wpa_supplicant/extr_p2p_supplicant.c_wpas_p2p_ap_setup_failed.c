
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int p2pdev; TYPE_1__* global; } ;
struct TYPE_2__ {struct wpa_supplicant* p2p_group_formation; } ;


 int eloop_cancel_timeout (int ,int ,int *) ;
 int eloop_register_timeout (int ,int ,int ,int ,int *) ;
 int wpas_p2p_group_formation_timeout ;

void wpas_p2p_ap_setup_failed(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->global->p2p_group_formation != wpa_s)
  return;

 eloop_cancel_timeout(wpas_p2p_group_formation_timeout,
        wpa_s->p2pdev, ((void*)0));
 eloop_register_timeout(0, 0, wpas_p2p_group_formation_timeout,
          wpa_s->p2pdev, ((void*)0));
}
