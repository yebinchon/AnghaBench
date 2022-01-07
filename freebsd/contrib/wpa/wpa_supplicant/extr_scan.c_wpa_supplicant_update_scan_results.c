
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_scan_results {int dummy; } ;


 int wpa_scan_results_free (struct wpa_scan_results*) ;
 struct wpa_scan_results* wpa_supplicant_get_scan_results (struct wpa_supplicant*,int *,int ) ;

int wpa_supplicant_update_scan_results(struct wpa_supplicant *wpa_s)
{
 struct wpa_scan_results *scan_res;
 scan_res = wpa_supplicant_get_scan_results(wpa_s, ((void*)0), 0);
 if (scan_res == ((void*)0))
  return -1;
 wpa_scan_results_free(scan_res);

 return 0;
}
