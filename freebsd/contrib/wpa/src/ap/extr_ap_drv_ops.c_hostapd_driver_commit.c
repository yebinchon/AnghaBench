
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* commit ) (int ) ;} ;


 int stub1 (int ) ;

int hostapd_driver_commit(struct hostapd_data *hapd)
{
 if (hapd->driver == ((void*)0) || hapd->driver->commit == ((void*)0))
  return 0;
 return hapd->driver->commit(hapd->drv_priv);
}
