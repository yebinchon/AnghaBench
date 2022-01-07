
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct hostapd_acl_params {int dummy; } ;
struct TYPE_2__ {int (* set_acl ) (int ,struct hostapd_acl_params*) ;} ;


 int stub1 (int ,struct hostapd_acl_params*) ;

__attribute__((used)) static inline int hostapd_drv_set_acl(struct hostapd_data *hapd,
          struct hostapd_acl_params *params)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_acl == ((void*)0))
  return 0;
 return hapd->driver->set_acl(hapd->drv_priv, params);
}
