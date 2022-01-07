
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_radius_acl_auth ) (int ,int const*,int,int ) ;} ;


 int stub1 (int ,int const*,int,int ) ;

__attribute__((used)) static inline int hostapd_drv_set_radius_acl_auth(struct hostapd_data *hapd,
        const u8 *mac, int accepted,
        u32 session_timeout)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_radius_acl_auth == ((void*)0))
  return 0;
 return hapd->driver->set_radius_acl_auth(hapd->drv_priv, mac, accepted,
       session_timeout);
}
