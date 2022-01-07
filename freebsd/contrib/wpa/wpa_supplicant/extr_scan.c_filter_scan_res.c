
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int * bssid_filter; } ;
struct wpa_scan_results {size_t num; TYPE_1__** res; } ;
struct TYPE_2__ {int bssid; } ;


 int MSG_DEBUG ;
 int os_free (TYPE_1__*) ;
 int wpa_printf (int ,char*,int) ;
 scalar_t__ wpa_supplicant_filter_bssid_match (struct wpa_supplicant*,int ) ;

void filter_scan_res(struct wpa_supplicant *wpa_s,
       struct wpa_scan_results *res)
{
 size_t i, j;

 if (wpa_s->bssid_filter == ((void*)0))
  return;

 for (i = 0, j = 0; i < res->num; i++) {
  if (wpa_supplicant_filter_bssid_match(wpa_s,
            res->res[i]->bssid)) {
   res->res[j++] = res->res[i];
  } else {
   os_free(res->res[i]);
   res->res[i] = ((void*)0);
  }
 }

 if (res->num != j) {
  wpa_printf(MSG_DEBUG, "Filtered out %d scan results",
      (int) (res->num - j));
  res->num = j;
 }
}
