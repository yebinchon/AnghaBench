
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* flush ) (int ) ;} ;


 int stub1 (int ) ;

int hostapd_flush(struct hostapd_data *hapd)
{
 if (hapd->driver == ((void*)0) || hapd->driver->flush == ((void*)0))
  return 0;
 return hapd->driver->flush(hapd->drv_priv);
}
