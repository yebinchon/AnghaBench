
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_drv_stop_sched_scan (struct wpa_supplicant*) ;

__attribute__((used)) static int wpa_supplicant_stop_sched_scan(struct wpa_supplicant *wpa_s)
{
 int ret;

 ret = wpa_drv_stop_sched_scan(wpa_s);
 if (ret) {
  wpa_dbg(wpa_s, MSG_DEBUG, "stopping sched_scan failed!");

  return -1;
 }

 return ret;
}
