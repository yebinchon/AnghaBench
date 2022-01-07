
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int sched_scan_stop_req; scalar_t__ sched_scanning; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_sched_scan_timeout ;
 int wpa_supplicant_stop_sched_scan (struct wpa_supplicant*) ;

void wpa_supplicant_cancel_sched_scan(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->sched_scanning)
  return;

 if (wpa_s->sched_scanning)
  wpa_s->sched_scan_stop_req = 1;

 wpa_dbg(wpa_s, MSG_DEBUG, "Cancelling sched scan");
 eloop_cancel_timeout(wpa_supplicant_sched_scan_timeout, wpa_s, ((void*)0));
 wpa_supplicant_stop_sched_scan(wpa_s);
}
