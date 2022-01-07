
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; int p2pdev; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;


 int eloop_cancel_timeout (int ,int ,int *) ;
 int p2p_group_formation_failed (scalar_t__) ;
 int wpas_group_formation_completed (struct wpa_supplicant*,int ,int) ;
 int wpas_p2p_group_formation_timeout ;

__attribute__((used)) static void wpas_p2p_group_formation_failed(struct wpa_supplicant *wpa_s,
         int already_deleted)
{
 eloop_cancel_timeout(wpas_p2p_group_formation_timeout,
        wpa_s->p2pdev, ((void*)0));
 if (wpa_s->global->p2p)
  p2p_group_formation_failed(wpa_s->global->p2p);
 wpas_group_formation_completed(wpa_s, 0, already_deleted);
}
