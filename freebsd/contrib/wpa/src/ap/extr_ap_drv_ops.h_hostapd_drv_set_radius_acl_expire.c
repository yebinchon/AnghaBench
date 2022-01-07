
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_radius_acl_expire ) (int ,int const*) ;} ;


 int stub1 (int ,int const*) ;

__attribute__((used)) static inline int hostapd_drv_set_radius_acl_expire(struct hostapd_data *hapd,
          const u8 *mac)
{
 if (hapd->driver == ((void*)0) ||
     hapd->driver->set_radius_acl_expire == ((void*)0))
  return 0;
 return hapd->driver->set_radius_acl_expire(hapd->drv_priv, mac);
}
