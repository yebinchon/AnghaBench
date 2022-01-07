
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int drv_flags; int last_auth_timeout_sec; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ ap_scan; } ;


 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_WIRED ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int,int ,struct wpa_supplicant*,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int,int) ;
 int wpa_supplicant_timeout ;

void wpa_supplicant_req_auth_timeout(struct wpa_supplicant *wpa_s,
         int sec, int usec)
{
 if (wpa_s->conf->ap_scan == 0 &&
     (wpa_s->drv_flags & WPA_DRIVER_FLAGS_WIRED))
  return;

 wpa_dbg(wpa_s, MSG_DEBUG, "Setting authentication timeout: %d sec "
  "%d usec", sec, usec);
 eloop_cancel_timeout(wpa_supplicant_timeout, wpa_s, ((void*)0));
 wpa_s->last_auth_timeout_sec = sec;
 eloop_register_timeout(sec, usec, wpa_supplicant_timeout, wpa_s, ((void*)0));
}
