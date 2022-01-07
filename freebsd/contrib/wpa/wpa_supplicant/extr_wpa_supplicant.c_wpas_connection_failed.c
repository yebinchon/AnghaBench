
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int* next_scan_freqs; scalar_t__ normal_scans; scalar_t__ current_ssid; scalar_t__ extra_blacklist_count; scalar_t__ current_bss; scalar_t__ disconnected; scalar_t__ own_disconnect_req; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int* get_bss_freqs_in_ess (struct wpa_supplicant*) ;
 int os_free (int*) ;
 int wpa_blacklist_add (struct wpa_supplicant*,int const*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int,int) ;
 int wpa_supplicant_timeout ;
 int wpas_auth_failed (struct wpa_supplicant*,char*) ;
 int wpas_connect_work_done (struct wpa_supplicant*) ;

void wpas_connection_failed(struct wpa_supplicant *wpa_s, const u8 *bssid)
{
 int timeout;
 int count;
 int *freqs = ((void*)0);

 wpas_connect_work_done(wpa_s);




 eloop_cancel_timeout(wpa_supplicant_timeout, wpa_s, ((void*)0));





 if (wpa_s->own_disconnect_req) {
  wpa_s->own_disconnect_req = 0;
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Ignore connection failure due to local request to disconnect");
  return;
 }
 if (wpa_s->disconnected) {
  wpa_dbg(wpa_s, MSG_DEBUG, "Ignore connection failure "
   "indication since interface has been put into "
   "disconnected state");
  return;
 }
 count = wpa_blacklist_add(wpa_s, bssid);
 if (count == 1 && wpa_s->current_bss) {






  freqs = get_bss_freqs_in_ess(wpa_s);
  if (freqs) {
   wpa_dbg(wpa_s, MSG_DEBUG, "Another BSS in this ESS "
    "has been seen; try it next");
   wpa_blacklist_add(wpa_s, bssid);





   os_free(wpa_s->next_scan_freqs);
   wpa_s->next_scan_freqs = freqs;
  }
 }





 count += wpa_s->extra_blacklist_count;

 if (count > 3 && wpa_s->current_ssid) {
  wpa_printf(MSG_DEBUG, "Continuous association failures - "
      "consider temporary network disabling");
  wpas_auth_failed(wpa_s, "CONN_FAILED");
 }

 switch (count) {
 case 1:
  timeout = 100;
  break;
 case 2:
  timeout = 500;
  break;
 case 3:
  timeout = 1000;
  break;
 case 4:
  timeout = 5000;
  break;
 default:
  timeout = 10000;
  break;
 }

 wpa_dbg(wpa_s, MSG_DEBUG, "Blacklist count %d --> request scan in %d "
  "ms", count, timeout);







 wpa_s->normal_scans = 0;
 wpa_supplicant_req_scan(wpa_s, timeout / 1000,
    1000 * (timeout % 1000));
}
