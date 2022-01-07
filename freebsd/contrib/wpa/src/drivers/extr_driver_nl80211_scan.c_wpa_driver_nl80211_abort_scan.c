
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct wpa_driver_nl80211_data {scalar_t__ scan_vendor_cmd_avail; } ;
struct i802_bss {struct wpa_driver_nl80211_data* drv; } ;


 int nl80211_abort_scan (struct i802_bss*) ;
 int nl80211_abort_vendor_scan (struct wpa_driver_nl80211_data*,scalar_t__) ;

int wpa_driver_nl80211_abort_scan(void *priv, u64 scan_cookie)
{
 struct i802_bss *bss = priv;
 return nl80211_abort_scan(bss);
}
