
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_driver_scan_params {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* scan2 ) (int ,struct wpa_driver_scan_params*) ;} ;


 int stub1 (int ,struct wpa_driver_scan_params*) ;

int hostapd_driver_scan(struct hostapd_data *hapd,
   struct wpa_driver_scan_params *params)
{
 if (hapd->driver && hapd->driver->scan2)
  return hapd->driver->scan2(hapd->drv_priv, params);
 return -1;
}
