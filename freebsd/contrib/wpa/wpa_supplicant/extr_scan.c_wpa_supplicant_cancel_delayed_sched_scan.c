
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int sched_scan_supported; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_delayed_sched_scan_timeout ;

void wpa_supplicant_cancel_delayed_sched_scan(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->sched_scan_supported)
  return;

 wpa_dbg(wpa_s, MSG_DEBUG, "Cancelling delayed sched scan");
 eloop_cancel_timeout(wpa_supplicant_delayed_sched_scan_timeout,
        wpa_s, ((void*)0));
}
