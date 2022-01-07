
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_operstate ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int wpa_drv_set_operstate(struct wpa_supplicant *wpa_s,
     int state)
{
 if (wpa_s->driver->set_operstate)
  return wpa_s->driver->set_operstate(wpa_s->drv_priv, state);
 return 0;
}
