
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ wpa_state; int eapol; } ;


 int TRUE ;
 scalar_t__ WPA_ASSOCIATED ;
 int WPA_COMPLETED ;
 int eapol_sm_notify_eap_success (int ,int ) ;
 int eapol_sm_notify_portValid (int ,int ) ;
 int wpa_supplicant_cancel_auth_timeout (struct wpa_supplicant*) ;
 int wpa_supplicant_set_state (struct wpa_supplicant*,int ) ;

__attribute__((used)) static void wpa_supplicant_event_port_authorized(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->wpa_state == WPA_ASSOCIATED) {
  wpa_supplicant_cancel_auth_timeout(wpa_s);
  wpa_supplicant_set_state(wpa_s, WPA_COMPLETED);
  eapol_sm_notify_portValid(wpa_s->eapol, TRUE);
  eapol_sm_notify_eap_success(wpa_s->eapol, TRUE);
 }
}
