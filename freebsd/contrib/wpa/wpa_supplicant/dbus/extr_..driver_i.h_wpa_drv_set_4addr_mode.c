
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int bridge_ifname; int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_4addr_mode ) (int ,int ,int) ;} ;


 int stub1 (int ,int ,int) ;

__attribute__((used)) static inline int wpa_drv_set_4addr_mode(struct wpa_supplicant *wpa_s, int val)
{
 if (!wpa_s->driver->set_4addr_mode)
  return -1;
 return wpa_s->driver->set_4addr_mode(wpa_s->drv_priv,
          wpa_s->bridge_ifname, val);
}
