
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_scan_results {int dummy; } ;
struct wpa_driver_nl80211_data {int dummy; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;


 struct wpa_scan_results* nl80211_get_scan_results (struct wpa_driver_nl80211_data*) ;
 int wpa_driver_nl80211_check_bss_status (struct wpa_driver_nl80211_data*,struct wpa_scan_results*) ;

struct wpa_scan_results * wpa_driver_nl80211_get_scan_results(void *priv)
{
 struct i802_bss *bss = priv;
 struct wpa_driver_nl80211_data *drv = bss->drv;
 struct wpa_scan_results *res;

 res = nl80211_get_scan_results(drv);
 if (res)
  wpa_driver_nl80211_check_bss_status(drv, res);
 return res;
}
