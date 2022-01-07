
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int sched_scan_supported; } ;


 int eloop_register_timeout (int,int,int ,struct wpa_supplicant*,int *) ;
 int wpa_supplicant_delayed_sched_scan_timeout ;

int wpa_supplicant_delayed_sched_scan(struct wpa_supplicant *wpa_s,
          int sec, int usec)
{
 if (!wpa_s->sched_scan_supported)
  return -1;

 eloop_register_timeout(sec, usec,
          wpa_supplicant_delayed_sched_scan_timeout,
          wpa_s, ((void*)0));

 return 0;
}
