
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpa_get_beacon_ie (struct wpa_supplicant*) ;
 scalar_t__ wpa_supplicant_update_scan_results (struct wpa_supplicant*) ;

__attribute__((used)) static int wpa_supplicant_get_beacon_ie(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;
 if (wpa_get_beacon_ie(wpa_s) == 0) {
  return 0;
 }



 if (wpa_supplicant_update_scan_results(wpa_s) < 0)
  return -1;

 return wpa_get_beacon_ie(wpa_s);
}
