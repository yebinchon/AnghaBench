
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa; struct wpa_radio_work* connect_work; } ;
struct wpa_radio_work {scalar_t__ started; struct wpa_supplicant* wpa_s; struct wpa_connect_work* ctx; } ;
struct wpa_connect_work {int ssid; int bss; scalar_t__ bss_removed; } ;


 int MSG_DEBUG ;
 int sme_send_authentication (struct wpa_supplicant*,int ,int ,int) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpa_sm_set_assoc_wpa_ie (int ,int *,int ) ;
 int wpas_connect_work_done (struct wpa_supplicant*) ;
 int wpas_connect_work_free (struct wpa_connect_work*) ;
 scalar_t__ wpas_network_disabled (struct wpa_supplicant*,int ) ;
 int wpas_valid_bss_ssid (struct wpa_supplicant*,int ,int ) ;

__attribute__((used)) static void sme_auth_start_cb(struct wpa_radio_work *work, int deinit)
{
 struct wpa_connect_work *cwork = work->ctx;
 struct wpa_supplicant *wpa_s = work->wpa_s;

 if (deinit) {
  if (work->started)
   wpa_s->connect_work = ((void*)0);

  wpas_connect_work_free(cwork);
  return;
 }

 wpa_s->connect_work = work;

 if (cwork->bss_removed ||
     !wpas_valid_bss_ssid(wpa_s, cwork->bss, cwork->ssid) ||
     wpas_network_disabled(wpa_s, cwork->ssid)) {
  wpa_dbg(wpa_s, MSG_DEBUG, "SME: BSS/SSID entry for authentication not valid anymore - drop connection attempt");
  wpas_connect_work_done(wpa_s);
  return;
 }



 wpa_sm_set_assoc_wpa_ie(wpa_s->wpa, ((void*)0), 0);

 sme_send_authentication(wpa_s, cwork->bss, cwork->ssid, 1);
}
