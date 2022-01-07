
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wowlan_triggers {int dummy; } ;
struct TYPE_2__ {int (* set_wowlan ) (int ,struct wowlan_triggers const*) ;} ;


 int stub1 (int ,struct wowlan_triggers const*) ;

__attribute__((used)) static inline int wpa_drv_wowlan(struct wpa_supplicant *wpa_s,
     const struct wowlan_triggers *triggers)
{
 if (!wpa_s->driver->set_wowlan)
  return -1;
 return wpa_s->driver->set_wowlan(wpa_s->drv_priv, triggers);
}
