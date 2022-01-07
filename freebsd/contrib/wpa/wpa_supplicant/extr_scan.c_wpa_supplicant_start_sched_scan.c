
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int sched_scanning; } ;
struct wpa_driver_scan_params {int dummy; } ;


 int wpa_drv_sched_scan (struct wpa_supplicant*,struct wpa_driver_scan_params*) ;
 int wpa_supplicant_notify_scanning (struct wpa_supplicant*,int) ;

__attribute__((used)) static int
wpa_supplicant_start_sched_scan(struct wpa_supplicant *wpa_s,
    struct wpa_driver_scan_params *params)
{
 int ret;

 wpa_supplicant_notify_scanning(wpa_s, 1);
 ret = wpa_drv_sched_scan(wpa_s, params);
 if (ret)
  wpa_supplicant_notify_scanning(wpa_s, 0);
 else
  wpa_s->sched_scanning = 1;

 return ret;
}
