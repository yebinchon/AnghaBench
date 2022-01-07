
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ap_iface; int current_ssid; } ;


 int MSG_DEBUG ;
 scalar_t__ hostapd_csa_in_progress (int ) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_go_update_common_freqs (struct wpa_supplicant*) ;
 scalar_t__ wpas_p2p_move_go_csa (struct wpa_supplicant*) ;
 int wpas_p2p_move_go_no_csa (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_p2p_move_go(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 if (!wpa_s->ap_iface || !wpa_s->current_ssid)
  return;

 wpas_p2p_go_update_common_freqs(wpa_s);


 if (hostapd_csa_in_progress(wpa_s->ap_iface)) {
  wpa_printf(MSG_DEBUG,
      "P2P: CSA is in progress - not moving GO");
  return;
 }





 if (wpas_p2p_move_go_csa(wpa_s) < 0)
  wpas_p2p_move_go_no_csa(wpa_s);
}
