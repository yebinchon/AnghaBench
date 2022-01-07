
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* signal_monitor ) (int ,int,int) ;} ;


 int stub1 (int ,int,int) ;

__attribute__((used)) static inline int wpa_drv_signal_monitor(struct wpa_supplicant *wpa_s,
      int threshold, int hysteresis)
{
 if (wpa_s->driver->signal_monitor)
  return wpa_s->driver->signal_monitor(wpa_s->drv_priv,
           threshold, hysteresis);
 return -1;
}
