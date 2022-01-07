
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* add_tspec ) (int ,int const*,int *,size_t) ;} ;


 int stub1 (int ,int const*,int *,size_t) ;

int hostapd_add_tspec(struct hostapd_data *hapd, const u8 *addr,
        u8 *tspec_ie, size_t tspec_ielen)
{
 if (hapd->driver == ((void*)0) || hapd->driver->add_tspec == ((void*)0))
  return 0;
 return hapd->driver->add_tspec(hapd->drv_priv, addr, tspec_ie,
           tspec_ielen);
}
