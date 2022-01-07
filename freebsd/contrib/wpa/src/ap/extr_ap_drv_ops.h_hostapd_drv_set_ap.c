
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_driver_ap_params {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* set_ap ) (int ,struct wpa_driver_ap_params*) ;} ;


 int stub1 (int ,struct wpa_driver_ap_params*) ;

__attribute__((used)) static inline int hostapd_drv_set_ap(struct hostapd_data *hapd,
         struct wpa_driver_ap_params *params)
{
 if (hapd->driver == ((void*)0) || hapd->driver->set_ap == ((void*)0))
  return 0;
 return hapd->driver->set_ap(hapd->drv_priv, params);
}
