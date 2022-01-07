
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* radio_disable ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int wpa_drv_radio_disable(struct wpa_supplicant *wpa_s,
     int disabled)
{
 if (!wpa_s->driver->radio_disable)
  return -1;
 return wpa_s->driver->radio_disable(wpa_s->drv_priv, disabled);
}
