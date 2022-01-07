
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_driver_capa {int dummy; } ;
struct wowlan_triggers {int dummy; } ;
struct TYPE_2__ {int wowlan_triggers; } ;


 int os_free (struct wowlan_triggers*) ;
 int wpa_drv_wowlan (struct wpa_supplicant*,struct wowlan_triggers*) ;
 struct wowlan_triggers* wpa_get_wowlan_triggers (int ,struct wpa_driver_capa const*) ;

__attribute__((used)) static int wpas_set_wowlan_triggers(struct wpa_supplicant *wpa_s,
        const struct wpa_driver_capa *capa)
{
 struct wowlan_triggers *triggers;
 int ret = 0;

 if (!wpa_s->conf->wowlan_triggers)
  return 0;

 triggers = wpa_get_wowlan_triggers(wpa_s->conf->wowlan_triggers, capa);
 if (triggers) {
  ret = wpa_drv_wowlan(wpa_s, triggers);
  os_free(triggers);
 }
 return ret;
}
