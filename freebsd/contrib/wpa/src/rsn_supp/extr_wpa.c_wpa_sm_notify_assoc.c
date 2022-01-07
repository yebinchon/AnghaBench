
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {int renew_snonce; int ft_protocol; int * p2p_ip_addr; int igtk_wnm_sleep; int igtk; int gtk_wnm_sleep; int gtk; int tptk; scalar_t__ tptk_set; int ptk; scalar_t__ ptk_set; TYPE_1__* ctx; int bssid; scalar_t__ fils_completed; int eapol; int preauth_bssid; scalar_t__ rx_replay_counter_set; int * rx_replay_counter; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int ETH_ALEN ;
 int FALSE ;
 int MSG_DEBUG ;
 int WPA_REPLAY_COUNTER_LEN ;
 int eapol_sm_notify_portValid (int ,int ) ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (int *,int ,int) ;
 int rsn_preauth_deinit (struct wpa_sm*) ;
 int wpa_dbg (int ,int ,char*) ;
 scalar_t__ wpa_ft_is_completed (struct wpa_sm*) ;
 int wpa_ft_prepare_auth_request (struct wpa_sm*,int *) ;
 int wpa_supplicant_key_neg_complete (struct wpa_sm*,int ,int) ;
 int wpa_tdls_assoc (struct wpa_sm*) ;

void wpa_sm_notify_assoc(struct wpa_sm *sm, const u8 *bssid)
{
 int clear_keys = 1;

 if (sm == ((void*)0))
  return;

 wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG,
  "WPA: Association event - clear replay counter");
 os_memcpy(sm->bssid, bssid, ETH_ALEN);
 os_memset(sm->rx_replay_counter, 0, WPA_REPLAY_COUNTER_LEN);
 sm->rx_replay_counter_set = 0;
 sm->renew_snonce = 1;
 if (os_memcmp(sm->preauth_bssid, bssid, ETH_ALEN) == 0)
  rsn_preauth_deinit(sm);
 if (clear_keys) {




  wpa_dbg(sm->ctx->msg_ctx, MSG_DEBUG, "WPA: Clear old PTK");
  sm->ptk_set = 0;
  os_memset(&sm->ptk, 0, sizeof(sm->ptk));
  sm->tptk_set = 0;
  os_memset(&sm->tptk, 0, sizeof(sm->tptk));
  os_memset(&sm->gtk, 0, sizeof(sm->gtk));
  os_memset(&sm->gtk_wnm_sleep, 0, sizeof(sm->gtk_wnm_sleep));




 }
}
