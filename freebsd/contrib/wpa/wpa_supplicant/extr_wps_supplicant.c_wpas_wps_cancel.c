
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; int own_disconnect_req; scalar_t__ after_wps; scalar_t__ ap_iface; } ;


 int MSG_DEBUG ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 scalar_t__ WPA_ASSOCIATED ;
 scalar_t__ WPA_DISCONNECTED ;
 scalar_t__ WPA_SCANNING ;
 scalar_t__ eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_ap_wps_cancel (struct wpa_supplicant*) ;
 int wpa_supplicant_cancel_scan (struct wpa_supplicant*) ;
 int wpa_supplicant_deauthenticate (struct wpa_supplicant*,int ) ;
 int wpas_clear_wps (struct wpa_supplicant*) ;
 int wpas_wps_clear_ap_info (struct wpa_supplicant*) ;
 int wpas_wps_clear_timeout ;
 int wpas_wps_reenable_networks (struct wpa_supplicant*) ;

int wpas_wps_cancel(struct wpa_supplicant *wpa_s)
{







 if (wpa_s->wpa_state == WPA_SCANNING ||
     wpa_s->wpa_state == WPA_DISCONNECTED) {
  wpa_printf(MSG_DEBUG, "WPS: Cancel operation - cancel scan");
  wpa_supplicant_cancel_scan(wpa_s);
  wpas_clear_wps(wpa_s);
 } else if (wpa_s->wpa_state >= WPA_ASSOCIATED) {
  wpa_printf(MSG_DEBUG, "WPS: Cancel operation - "
      "deauthenticate");
  wpa_s->own_disconnect_req = 1;
  wpa_supplicant_deauthenticate(wpa_s,
           WLAN_REASON_DEAUTH_LEAVING);
  wpas_clear_wps(wpa_s);
 } else {
  wpas_wps_reenable_networks(wpa_s);
  wpas_wps_clear_ap_info(wpa_s);
  if (eloop_cancel_timeout(wpas_wps_clear_timeout, wpa_s, ((void*)0)) >
      0)
   wpas_clear_wps(wpa_s);
 }

 wpa_s->after_wps = 0;

 return 0;
}
