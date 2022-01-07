
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int scan_for_connection; } ;


 int MSG_DEBUG ;
 int WPA_INACTIVE ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_enabled_networks (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int,int) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpa_supplicant_req_new_scan(struct wpa_supplicant *wpa_s,
     int timeout_sec, int timeout_usec)
{
 if (!wpa_supplicant_enabled_networks(wpa_s)) {





  wpa_dbg(wpa_s, MSG_DEBUG, "Short-circuit new scan request "
   "since there are no enabled networks");
  wpa_supplicant_set_state(wpa_s, WPA_INACTIVE);
  return;
 }

 wpa_s->scan_for_connection = 1;
 wpa_supplicant_req_scan(wpa_s, timeout_sec, timeout_usec);
}
