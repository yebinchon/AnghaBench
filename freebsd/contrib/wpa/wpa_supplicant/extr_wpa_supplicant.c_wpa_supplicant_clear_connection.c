
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {struct wpa_ssid* current_ssid; int eapol; int wpa; } ;
struct wpa_ssid {int dummy; } ;


 int eapol_sm_notify_config (int ,int *,int *) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int wpa_clear_keys (struct wpa_supplicant*,int const*) ;
 int wpa_sm_set_config (int ,int *) ;
 int wpa_supplicant_mark_disassoc (struct wpa_supplicant*) ;
 int wpa_supplicant_timeout ;
 int wpas_connect_work_done (struct wpa_supplicant*) ;
 int wpas_notify_network_changed (struct wpa_supplicant*) ;

__attribute__((used)) static void wpa_supplicant_clear_connection(struct wpa_supplicant *wpa_s,
         const u8 *addr)
{
 struct wpa_ssid *old_ssid;

 wpas_connect_work_done(wpa_s);
 wpa_clear_keys(wpa_s, addr);
 old_ssid = wpa_s->current_ssid;
 wpa_supplicant_mark_disassoc(wpa_s);
 wpa_sm_set_config(wpa_s->wpa, ((void*)0));
 eapol_sm_notify_config(wpa_s->eapol, ((void*)0), ((void*)0));
 if (old_ssid != wpa_s->current_ssid)
  wpas_notify_network_changed(wpa_s);
 eloop_cancel_timeout(wpa_supplicant_timeout, wpa_s, ((void*)0));
}
