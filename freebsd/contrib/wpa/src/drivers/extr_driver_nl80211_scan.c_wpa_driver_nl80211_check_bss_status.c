
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {size_t num; int * res; } ;
struct wpa_driver_nl80211_data {int dummy; } ;


 int nl80211_check_bss_status (struct wpa_driver_nl80211_data*,int ) ;

__attribute__((used)) static void wpa_driver_nl80211_check_bss_status(
 struct wpa_driver_nl80211_data *drv, struct wpa_scan_results *res)
{
 size_t i;

 for (i = 0; i < res->num; i++)
  nl80211_check_bss_status(drv, res->res[i]);
}
