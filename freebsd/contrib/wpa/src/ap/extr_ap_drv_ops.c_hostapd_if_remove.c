
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int * drv_priv; TYPE_1__* driver; } ;
typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;
struct TYPE_2__ {int (* if_remove ) (int *,int,char const*) ;} ;


 int stub1 (int *,int,char const*) ;

int hostapd_if_remove(struct hostapd_data *hapd, enum wpa_driver_if_type type,
        const char *ifname)
{
 if (hapd->driver == ((void*)0) || hapd->drv_priv == ((void*)0) ||
     hapd->driver->if_remove == ((void*)0))
  return -1;
 return hapd->driver->if_remove(hapd->drv_priv, type, ifname);
}
