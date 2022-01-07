
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ bgscan_priv; TYPE_1__* bgscan; } ;
struct wpa_scan_results {int dummy; } ;
struct TYPE_2__ {int (* notify_scan ) (scalar_t__,struct wpa_scan_results*) ;} ;


 int stub1 (scalar_t__,struct wpa_scan_results*) ;

int bgscan_notify_scan(struct wpa_supplicant *wpa_s,
         struct wpa_scan_results *scan_res)
{
 if (wpa_s->bgscan && wpa_s->bgscan_priv)
  return wpa_s->bgscan->notify_scan(wpa_s->bgscan_priv,
        scan_res);
 return 0;
}
