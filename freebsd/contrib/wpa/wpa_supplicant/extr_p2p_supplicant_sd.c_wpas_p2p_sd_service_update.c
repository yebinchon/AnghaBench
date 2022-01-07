
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;


 int p2p_sd_service_update (scalar_t__) ;

void wpas_p2p_sd_service_update(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->global->p2p)
  p2p_sd_service_update(wpa_s->global->p2p);
}
