
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * prev_sched_ssid; scalar_t__ sched_scan_timed_out; scalar_t__ sched_scanning; scalar_t__ normal_scans; } ;


 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;

void wpas_scan_reset_sched_scan(struct wpa_supplicant *wpa_s)
{
 wpa_s->normal_scans = 0;
 if (wpa_s->sched_scanning) {
  wpa_s->sched_scan_timed_out = 0;
  wpa_s->prev_sched_ssid = ((void*)0);
  wpa_supplicant_cancel_sched_scan(wpa_s);
 }
}
