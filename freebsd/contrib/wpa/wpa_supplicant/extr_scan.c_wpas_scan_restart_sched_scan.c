
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int sched_scan_timed_out; int * prev_sched_ssid; } ;


 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;

void wpas_scan_restart_sched_scan(struct wpa_supplicant *wpa_s)
{

 wpa_s->sched_scan_timed_out = 1;
 wpa_s->prev_sched_ssid = ((void*)0);
 wpa_supplicant_cancel_sched_scan(wpa_s);
}
