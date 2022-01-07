
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; } ;


 scalar_t__ p2p_service_p2ps_id (int ,scalar_t__) ;

int wpas_p2p_service_p2ps_id_exists(struct wpa_supplicant *wpa_s, u32 adv_id)
{
 if (adv_id == 0)
  return 1;

 if (p2p_service_p2ps_id(wpa_s->global->p2p, adv_id))
  return 1;

 return 0;
}
