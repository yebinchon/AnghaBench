
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct wpa_scan_results {int dummy; } ;
struct TYPE_2__ {struct wpa_scan_results* (* get_scan_results2 ) (int ) ;} ;


 struct wpa_scan_results* stub1 (int ) ;

__attribute__((used)) static inline struct wpa_scan_results * wpa_drv_get_scan_results2(
 struct wpa_supplicant *wpa_s)
{
 if (wpa_s->driver->get_scan_results2)
  return wpa_s->driver->get_scan_results2(wpa_s->drv_priv);
 return ((void*)0);
}
