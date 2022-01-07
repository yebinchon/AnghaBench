
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* get_country ) (int ,char*) ;} ;


 int stub1 (int ,char*) ;

__attribute__((used)) static inline int hostapd_get_country(struct hostapd_data *hapd, char *alpha2)
{
 if (hapd->driver == ((void*)0) || hapd->driver->get_country == ((void*)0))
  return -1;
 return hapd->driver->get_country(hapd->drv_priv, alpha2);
}
