
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int p2p; } ;


 int p2p_service_add_asp (int ,int,int ,char const*,int ,int ,char const*,int const*) ;
 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;

int wpas_p2p_service_add_asp(struct wpa_supplicant *wpa_s,
        int auto_accept, u32 adv_id,
        const char *adv_str, u8 svc_state,
        u16 config_methods, const char *svc_info,
        const u8 *cpt_priority)
{
 int ret;

 ret = p2p_service_add_asp(wpa_s->global->p2p, auto_accept, adv_id,
      adv_str, svc_state, config_methods,
      svc_info, cpt_priority);
 if (ret == 0)
  wpas_p2p_sd_service_update(wpa_s);
 return ret;
}
