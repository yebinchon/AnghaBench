
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* ignore_assoc_disallow ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int wpa_drv_ignore_assoc_disallow(struct wpa_supplicant *wpa_s,
      int val)
{
 if (!wpa_s->driver->ignore_assoc_disallow)
  return -1;
 return wpa_s->driver->ignore_assoc_disallow(wpa_s->drv_priv, val);
}
