
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; int buf_len; int * buf; int peer_capab; int status_code; int dialog_token; int action_code; int dest; scalar_t__ count; } ;
struct wpa_tdls_peer {TYPE_1__ sm_tmr; int initiator; } ;
struct wpa_sm {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED ;
 int eloop_cancel_timeout (void (*) (void*,void*),struct wpa_sm*,struct wpa_tdls_peer*) ;
 int eloop_register_timeout (int,int,void (*) (void*,void*),struct wpa_sm*,struct wpa_tdls_peer*) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_tdls_do_teardown (struct wpa_sm*,struct wpa_tdls_peer*,int ) ;
 scalar_t__ wpa_tdls_send_tpk_msg (struct wpa_sm*,int ,int ,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void wpa_tdls_tpk_retry_timeout(void *eloop_ctx, void *timeout_ctx)
{

 struct wpa_sm *sm = eloop_ctx;
 struct wpa_tdls_peer *peer = timeout_ctx;

 if (peer->sm_tmr.count) {
  peer->sm_tmr.count--;

  wpa_printf(MSG_INFO, "TDLS: Retrying sending of message "
      "(action_code=%u)",
      peer->sm_tmr.action_code);

  if (peer->sm_tmr.buf == ((void*)0)) {
   wpa_printf(MSG_INFO, "TDLS: No retry buffer available "
       "for action_code=%u",
       peer->sm_tmr.action_code);
   eloop_cancel_timeout(wpa_tdls_tpk_retry_timeout, sm,
          peer);
   return;
  }


  if (wpa_tdls_send_tpk_msg(sm, peer->sm_tmr.dest,
       peer->sm_tmr.action_code,
       peer->sm_tmr.dialog_token,
       peer->sm_tmr.status_code,
       peer->sm_tmr.peer_capab,
       peer->initiator,
       peer->sm_tmr.buf,
       peer->sm_tmr.buf_len)) {
   wpa_printf(MSG_INFO, "TDLS: Failed to retry "
       "transmission");
  }

  eloop_cancel_timeout(wpa_tdls_tpk_retry_timeout, sm, peer);
  eloop_register_timeout(peer->sm_tmr.timer / 1000,
           (peer->sm_tmr.timer % 1000) * 1000,
           wpa_tdls_tpk_retry_timeout, sm, peer);
 } else {
  eloop_cancel_timeout(wpa_tdls_tpk_retry_timeout, sm, peer);

  wpa_printf(MSG_DEBUG, "TDLS: Sending Teardown Request");
  wpa_tdls_do_teardown(sm, peer,
         WLAN_REASON_TDLS_TEARDOWN_UNSPECIFIED);
 }
}
