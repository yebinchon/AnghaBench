
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_mgmt; } ;


 int MSG_DEBUG ;
 int eloop_deplete_timeout (int,int,int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int,int ,struct wpa_supplicant*,int *) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int,int) ;
 int wpa_supplicant_scan ;

void wpa_supplicant_req_scan(struct wpa_supplicant *wpa_s, int sec, int usec)
{
 int res;

 if (wpa_s->p2p_mgmt) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Ignore scan request (%d.%06d sec) on p2p_mgmt interface",
   sec, usec);
  return;
 }

 res = eloop_deplete_timeout(sec, usec, wpa_supplicant_scan, wpa_s,
        ((void*)0));
 if (res == 1) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Rescheduling scan request: %d.%06d sec",
   sec, usec);
 } else if (res == 0) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Ignore new scan request for %d.%06d sec since an earlier request is scheduled to trigger sooner",
   sec, usec);
 } else {
  wpa_dbg(wpa_s, MSG_DEBUG, "Setting scan request: %d.%06d sec",
   sec, usec);
  eloop_register_timeout(sec, usec, wpa_supplicant_scan, wpa_s, ((void*)0));
 }
}
