
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_noa ) (int ,int ,int,int) ;} ;


 int stub1 (int ,int ,int,int) ;

int hostapd_driver_set_noa(struct hostapd_data *hapd, u8 count, int start,
      int duration)
{
 if (hapd->driver && hapd->driver->set_noa)
  return hapd->driver->set_noa(hapd->drv_priv, count, start,
          duration);
 return -1;
}
