
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_data {int own_addr; int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* sta_assoc ) (int ,int ,int const*,int,int ,int const*,size_t) ;} ;


 int stub1 (int ,int ,int const*,int,int ,int const*,size_t) ;

int hostapd_sta_assoc(struct hostapd_data *hapd, const u8 *addr,
        int reassoc, u16 status, const u8 *ie, size_t len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->sta_assoc == ((void*)0))
  return 0;
 return hapd->driver->sta_assoc(hapd->drv_priv, hapd->own_addr, addr,
           reassoc, status, ie, len);
}
