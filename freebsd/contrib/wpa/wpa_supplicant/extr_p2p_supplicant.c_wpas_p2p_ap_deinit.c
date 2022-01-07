
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_supplicant {TYPE_2__* ap_iface; } ;
struct TYPE_4__ {TYPE_1__** bss; } ;
struct TYPE_3__ {int * p2p_group; } ;


 int wpas_p2p_group_deinit (struct wpa_supplicant*) ;

void wpas_p2p_ap_deinit(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->ap_iface->bss)
  wpa_s->ap_iface->bss[0]->p2p_group = ((void*)0);
 wpas_p2p_group_deinit(wpa_s);
}
