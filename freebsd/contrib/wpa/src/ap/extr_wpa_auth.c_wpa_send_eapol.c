
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wpa_state_machine {int TimeoutCtr; int GTimeoutCtr; int pending_1_of_4_timeout; } ;
struct TYPE_2__ {scalar_t__ wpa_disable_eapol_key_retries; scalar_t__ tx_status; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;


 int MSG_DEBUG ;
 int WPA_KEY_INFO_KEY_TYPE ;
 int WPA_KEY_INFO_MIC ;
 int __wpa_send_eapol (struct wpa_authenticator*,struct wpa_state_machine*,int,int const*,int const*,int const*,size_t,int,int,int ) ;
 int eapol_key_timeout_first ;
 int eapol_key_timeout_first_group ;
 int eapol_key_timeout_no_retrans ;
 int eapol_key_timeout_subseq ;
 int eloop_register_timeout (int,int,int ,struct wpa_authenticator*,struct wpa_state_machine*) ;
 int wpa_printf (int ,char*,int,int) ;
 int wpa_send_eapol_timeout ;

__attribute__((used)) static void wpa_send_eapol(struct wpa_authenticator *wpa_auth,
      struct wpa_state_machine *sm, int key_info,
      const u8 *key_rsc, const u8 *nonce,
      const u8 *kde, size_t kde_len,
      int keyidx, int encr)
{
 int timeout_ms;
 int pairwise = key_info & WPA_KEY_INFO_KEY_TYPE;
 u32 ctr;

 if (sm == ((void*)0))
  return;

 __wpa_send_eapol(wpa_auth, sm, key_info, key_rsc, nonce, kde, kde_len,
    keyidx, encr, 0);

 ctr = pairwise ? sm->TimeoutCtr : sm->GTimeoutCtr;
 if (ctr == 1 && wpa_auth->conf.tx_status)
  timeout_ms = pairwise ? eapol_key_timeout_first :
   eapol_key_timeout_first_group;
 else
  timeout_ms = eapol_key_timeout_subseq;
 if (wpa_auth->conf.wpa_disable_eapol_key_retries &&
     (!pairwise || (key_info & WPA_KEY_INFO_MIC)))
  timeout_ms = eapol_key_timeout_no_retrans;
 if (pairwise && ctr == 1 && !(key_info & WPA_KEY_INFO_MIC))
  sm->pending_1_of_4_timeout = 1;



 wpa_printf(MSG_DEBUG, "WPA: Use EAPOL-Key timeout of %u ms (retry "
     "counter %u)", timeout_ms, ctr);
 eloop_register_timeout(timeout_ms / 1000, (timeout_ms % 1000) * 1000,
          wpa_send_eapol_timeout, wpa_auth, sm);
}
