
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; } ;


 int p2p_service_del_asp (int ,int ) ;
 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;

int wpas_p2p_service_del_asp(struct wpa_supplicant *wpa_s, u32 adv_id)
{
 int ret;

 ret = p2p_service_del_asp(wpa_s->global->p2p, adv_id);
 if (ret == 0)
  wpas_p2p_sd_service_update(wpa_s);
 return ret;
}
