
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_remove ) (int ,int const*) ;} ;


 int stub1 (int ,int const*) ;

__attribute__((used)) static inline int hostapd_drv_sta_remove(struct hostapd_data *hapd,
      const u8 *addr)
{
 if (!hapd->driver || !hapd->driver->sta_remove || !hapd->drv_priv)
  return 0;
 return hapd->driver->sta_remove(hapd->drv_priv, addr);
}
