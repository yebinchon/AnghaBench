
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int bssid; scalar_t__ msg_3_of_4_ok; scalar_t__ ft_protocol; scalar_t__ ft_reassoc_completed; scalar_t__ fils_completed; int dot11RSNA4WayHandshakeFailures; } ;


 int ETH_ALEN ;
 scalar_t__ WPA_4WAY_HANDSHAKE ;
 int eloop_cancel_timeout (int ,struct wpa_sm*,int *) ;
 int os_memset (int ,int ,int ) ;
 int pmksa_cache_clear_current (struct wpa_sm*) ;
 int rsn_preauth_deinit (struct wpa_sm*) ;
 int wpa_sm_drop_sa (struct wpa_sm*) ;
 scalar_t__ wpa_sm_get_state (struct wpa_sm*) ;
 int wpa_sm_rekey_ptk ;
 int wpa_sm_start_preauth ;
 int wpa_tdls_disassoc (struct wpa_sm*) ;

void wpa_sm_notify_disassoc(struct wpa_sm *sm)
{
 eloop_cancel_timeout(wpa_sm_start_preauth, sm, ((void*)0));
 eloop_cancel_timeout(wpa_sm_rekey_ptk, sm, ((void*)0));
 rsn_preauth_deinit(sm);
 pmksa_cache_clear_current(sm);
 if (wpa_sm_get_state(sm) == WPA_4WAY_HANDSHAKE)
  sm->dot11RSNA4WayHandshakeFailures++;
 wpa_sm_drop_sa(sm);

 sm->msg_3_of_4_ok = 0;
 os_memset(sm->bssid, 0, ETH_ALEN);
}
