
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct csa_settings {int dummy; } ;
struct TYPE_2__ {int (* switch_channel ) (int ,struct csa_settings*) ;} ;


 int stub1 (int ,struct csa_settings*) ;

__attribute__((used)) static inline int wpa_drv_switch_channel(struct wpa_supplicant *wpa_s,
      struct csa_settings *settings)
{
 if (!wpa_s->driver->switch_channel)
  return -1;
 return wpa_s->driver->switch_channel(wpa_s->drv_priv, settings);
}
