
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_driver_capa {int dummy; } ;
struct TYPE_2__ {int changed_parameters; char* country; char* wowlan_triggers; int sched_scan_plans; } ;


 int CFG_CHANGED_COUNTRY ;
 int CFG_CHANGED_DISABLE_BTM ;
 int CFG_CHANGED_EXT_PW_BACKEND ;
 int CFG_CHANGED_SCHED_SCAN_PLANS ;
 int CFG_CHANGED_WOWLAN_TRIGGERS ;
 int MSG_ERROR ;
 int wpa_drv_get_capa (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 scalar_t__ wpa_drv_set_country (struct wpa_supplicant*,char*) ;
 int wpa_printf (int ,char*,char*) ;
 int wpa_supplicant_set_default_scan_ies (struct wpa_supplicant*) ;
 int wpas_init_ext_pw (struct wpa_supplicant*) ;
 int wpas_p2p_update_config (struct wpa_supplicant*) ;
 int wpas_sched_scan_plans_set (struct wpa_supplicant*,int ) ;
 scalar_t__ wpas_set_wowlan_triggers (struct wpa_supplicant*,struct wpa_driver_capa*) ;
 int wpas_wps_update_config (struct wpa_supplicant*) ;

void wpa_supplicant_update_config(struct wpa_supplicant *wpa_s)
{
 if ((wpa_s->conf->changed_parameters & CFG_CHANGED_COUNTRY) &&
     wpa_s->conf->country[0] && wpa_s->conf->country[1]) {
  char country[3];
  country[0] = wpa_s->conf->country[0];
  country[1] = wpa_s->conf->country[1];
  country[2] = '\0';
  if (wpa_drv_set_country(wpa_s, country) < 0) {
   wpa_printf(MSG_ERROR, "Failed to set country code "
       "'%s'", country);
  }
 }

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_EXT_PW_BACKEND)
  wpas_init_ext_pw(wpa_s);

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_SCHED_SCAN_PLANS)
  wpas_sched_scan_plans_set(wpa_s, wpa_s->conf->sched_scan_plans);

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_WOWLAN_TRIGGERS) {
  struct wpa_driver_capa capa;
  int res = wpa_drv_get_capa(wpa_s, &capa);

  if (res == 0 && wpas_set_wowlan_triggers(wpa_s, &capa) < 0)
   wpa_printf(MSG_ERROR,
       "Failed to update wowlan_triggers to '%s'",
       wpa_s->conf->wowlan_triggers);
 }

 if (wpa_s->conf->changed_parameters & CFG_CHANGED_DISABLE_BTM)
  wpa_supplicant_set_default_scan_ies(wpa_s);




 wpas_p2p_update_config(wpa_s);
 wpa_s->conf->changed_parameters = 0;
}
