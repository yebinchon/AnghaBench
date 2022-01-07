
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_bss* current_bss; int bssid; } ;
struct wpa_bss {int dummy; } ;


 struct wpa_bss* wpa_supplicant_get_new_bss (struct wpa_supplicant*,int ) ;
 int wpa_supplicant_update_scan_results (struct wpa_supplicant*) ;

__attribute__((used)) static void wpa_supplicant_update_current_bss(struct wpa_supplicant *wpa_s)
{
 struct wpa_bss *bss = wpa_supplicant_get_new_bss(wpa_s, wpa_s->bssid);

 if (!bss) {
  wpa_supplicant_update_scan_results(wpa_s);


  bss = wpa_supplicant_get_new_bss(wpa_s, wpa_s->bssid);
 }

 if (bss)
  wpa_s->current_bss = bss;
}
