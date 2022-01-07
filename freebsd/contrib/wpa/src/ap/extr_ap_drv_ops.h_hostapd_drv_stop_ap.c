
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* stop_ap ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static inline int hostapd_drv_stop_ap(struct hostapd_data *hapd)
{
 if (!hapd->driver || !hapd->driver->stop_ap || !hapd->drv_priv)
  return 0;
 return hapd->driver->stop_ap(hapd->drv_priv);
}
