
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int own_addr; int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_deauth ) (int ,int ,int const*,int) ;} ;


 int stub1 (int ,int ,int const*,int) ;

int hostapd_drv_sta_deauth(struct hostapd_data *hapd,
      const u8 *addr, int reason)
{
 if (!hapd->driver || !hapd->driver->sta_deauth || !hapd->drv_priv)
  return 0;
 return hapd->driver->sta_deauth(hapd->drv_priv, hapd->own_addr, addr,
     reason);
}
