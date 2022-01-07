
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* remain_on_channel ) (int ,unsigned int,unsigned int) ;} ;


 int stub1 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static inline int wpa_drv_remain_on_channel(struct wpa_supplicant *wpa_s,
         unsigned int freq,
         unsigned int duration)
{
 if (wpa_s->driver->remain_on_channel)
  return wpa_s->driver->remain_on_channel(wpa_s->drv_priv, freq,
       duration);
 return -1;
}
