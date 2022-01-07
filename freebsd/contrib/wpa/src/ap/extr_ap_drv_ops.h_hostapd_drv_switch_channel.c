
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int * drv_priv; TYPE_1__* driver; } ;
struct csa_settings {int dummy; } ;
struct TYPE_2__ {int (* switch_channel ) (int *,struct csa_settings*) ;} ;


 int stub1 (int *,struct csa_settings*) ;

__attribute__((used)) static inline int hostapd_drv_switch_channel(struct hostapd_data *hapd,
          struct csa_settings *settings)
{
 if (hapd->driver == ((void*)0) || hapd->driver->switch_channel == ((void*)0) ||
     hapd->drv_priv == ((void*)0))
  return -1;

 return hapd->driver->switch_channel(hapd->drv_priv, settings);
}
