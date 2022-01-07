
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int p2p_go_group_formation_completed; TYPE_1__* global; int p2pdev; int bssid; int p2p_in_provisioning; struct wpa_ssid* current_ssid; } ;
struct wpa_ssid {scalar_t__ mode; int ssid_len; int ssid; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int P2P_MAX_INITIAL_CONN_WAIT ;
 int P2P_MAX_INITIAL_CONN_WAIT_GO ;
 scalar_t__ WPAS_MODE_INFRA ;
 int eloop_cancel_timeout (int ,int ,int *) ;
 int eloop_register_timeout (int ,int ,int ,int ,int *) ;
 int os_memcpy (int *,int ,int) ;
 int p2p_clear_provisioning_info (scalar_t__,int *) ;
 int p2p_wps_success_cb (scalar_t__,int const*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpas_group_formation_completed (struct wpa_supplicant*,int,int ) ;
 int wpas_p2p_group_formation_timeout ;
 int wpas_p2p_persistent_group (struct wpa_supplicant*,int *,int ,int ) ;

void wpas_p2p_wps_success(struct wpa_supplicant *wpa_s, const u8 *peer_addr,
     int registrar)
{
 struct wpa_ssid *ssid = wpa_s->current_ssid;

 if (!wpa_s->p2p_in_provisioning) {
  wpa_printf(MSG_DEBUG, "P2P: Ignore WPS success event - P2P "
      "provisioning not in progress");
  return;
 }

 if (ssid && ssid->mode == WPAS_MODE_INFRA) {
  u8 go_dev_addr[ETH_ALEN];
  os_memcpy(go_dev_addr, wpa_s->bssid, ETH_ALEN);
  wpas_p2p_persistent_group(wpa_s, go_dev_addr, ssid->ssid,
       ssid->ssid_len);

  p2p_clear_provisioning_info(wpa_s->global->p2p, go_dev_addr);
 }

 eloop_cancel_timeout(wpas_p2p_group_formation_timeout, wpa_s->p2pdev,
        ((void*)0));
 wpa_s->p2p_go_group_formation_completed = 1;
 if (ssid && ssid->mode == WPAS_MODE_INFRA) {






  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Re-start group formation timeout (%d seconds) as client for initial connection",
   P2P_MAX_INITIAL_CONN_WAIT);
  eloop_register_timeout(P2P_MAX_INITIAL_CONN_WAIT, 0,
           wpas_p2p_group_formation_timeout,
           wpa_s->p2pdev, ((void*)0));

  wpa_s->p2p_go_group_formation_completed = 0;
 } else if (ssid) {





  wpa_dbg(wpa_s, MSG_DEBUG,
   "P2P: Re-start group formation timeout (%d seconds) as GO for initial connection",
   P2P_MAX_INITIAL_CONN_WAIT_GO);
  eloop_register_timeout(P2P_MAX_INITIAL_CONN_WAIT_GO, 0,
           wpas_p2p_group_formation_timeout,
           wpa_s->p2pdev, ((void*)0));



  wpa_s->p2p_go_group_formation_completed = 0;
 }
 if (wpa_s->global->p2p)
  p2p_wps_success_cb(wpa_s->global->p2p, peer_addr);
 wpas_group_formation_completed(wpa_s, 1, 0);
}
