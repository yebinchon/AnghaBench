
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_scan_results {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {struct wpa_scan_results* (* get_scan_results2 ) (int ) ;} ;


 struct wpa_scan_results* stub1 (int ) ;

struct wpa_scan_results * hostapd_driver_get_scan_results(
 struct hostapd_data *hapd)
{
 if (hapd->driver && hapd->driver->get_scan_results2)
  return hapd->driver->get_scan_results2(hapd->drv_priv);
 return ((void*)0);
}
