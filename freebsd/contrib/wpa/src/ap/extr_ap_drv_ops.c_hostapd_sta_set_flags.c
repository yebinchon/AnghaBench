
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_set_flags ) (int ,int *,int,int,int) ;} ;


 int stub1 (int ,int *,int,int,int) ;

int hostapd_sta_set_flags(struct hostapd_data *hapd, u8 *addr,
     int total_flags, int flags_or, int flags_and)
{
 if (hapd->driver == ((void*)0) || hapd->driver->sta_set_flags == ((void*)0))
  return 0;
 return hapd->driver->sta_set_flags(hapd->drv_priv, addr, total_flags,
        flags_or, flags_and);
}
