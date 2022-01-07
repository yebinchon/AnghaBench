
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_data {int * drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {char const* (* get_radio_name ) (int *) ;} ;


 char const* stub1 (int *) ;

__attribute__((used)) static inline const char * hostapd_drv_get_radio_name(struct hostapd_data *hapd)
{
 if (hapd->driver == ((void*)0) || hapd->drv_priv == ((void*)0) ||
     hapd->driver->get_radio_name == ((void*)0))
  return ((void*)0);
 return hapd->driver->get_radio_name(hapd->drv_priv);
}
