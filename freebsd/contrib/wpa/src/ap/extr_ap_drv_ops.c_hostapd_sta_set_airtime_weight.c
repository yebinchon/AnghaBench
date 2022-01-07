
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_set_airtime_weight ) (int ,int const*,unsigned int) ;} ;


 int stub1 (int ,int const*,unsigned int) ;

int hostapd_sta_set_airtime_weight(struct hostapd_data *hapd, const u8 *addr,
       unsigned int weight)
{
 if (!hapd->driver || !hapd->driver->sta_set_airtime_weight)
  return 0;
 return hapd->driver->sta_set_airtime_weight(hapd->drv_priv, addr,
          weight);
}
