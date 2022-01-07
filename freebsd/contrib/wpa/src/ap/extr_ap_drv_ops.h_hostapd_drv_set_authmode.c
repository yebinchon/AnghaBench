
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_authmode ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static inline int hostapd_drv_set_authmode(struct hostapd_data *hapd,
        int auth_algs)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_authmode == ((void*)0))
  return 0;
 return hapd->driver->set_authmode(hapd->drv_priv, auth_algs);
}
