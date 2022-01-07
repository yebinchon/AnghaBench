
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; scalar_t__ disconnected; } ;


 int MSG_DEBUG ;
 scalar_t__ WPA_SCANNING ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_fast_associate (struct wpa_supplicant*) ;
 int wpa_supplicant_req_scan (struct wpa_supplicant*,int ,int ) ;

void wpas_network_reenabled(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 if (wpa_s->disconnected || wpa_s->wpa_state != WPA_SCANNING)
  return;

 wpa_dbg(wpa_s, MSG_DEBUG,
  "Try to associate due to network getting re-enabled");
 if (wpa_supplicant_fast_associate(wpa_s) != 1) {
  wpa_supplicant_cancel_sched_scan(wpa_s);
  wpa_supplicant_req_scan(wpa_s, 0, 0);
 }
}
