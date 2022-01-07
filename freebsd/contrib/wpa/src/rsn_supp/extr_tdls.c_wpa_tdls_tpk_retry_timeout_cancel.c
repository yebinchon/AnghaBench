
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int action_code; scalar_t__ buf_len; scalar_t__ timer; scalar_t__ count; int * buf; } ;
struct wpa_tdls_peer {TYPE_1__ sm_tmr; } ;
struct wpa_sm {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int eloop_cancel_timeout (int ,struct wpa_sm*,struct wpa_tdls_peer*) ;
 int os_free (int *) ;
 int wpa_printf (int ,char*,int) ;
 int wpa_tdls_tpk_retry_timeout ;

__attribute__((used)) static void wpa_tdls_tpk_retry_timeout_cancel(struct wpa_sm *sm,
           struct wpa_tdls_peer *peer,
           u8 action_code)
{
 if (action_code == peer->sm_tmr.action_code) {
  wpa_printf(MSG_DEBUG, "TDLS: Retry timeout cancelled for "
      "action_code=%u", action_code);


  eloop_cancel_timeout(wpa_tdls_tpk_retry_timeout, sm, peer);


  os_free(peer->sm_tmr.buf);
  peer->sm_tmr.buf = ((void*)0);

  peer->sm_tmr.count = 0;
  peer->sm_tmr.timer = 0;
  peer->sm_tmr.buf_len = 0;
  peer->sm_tmr.action_code = 0xff;
 } else {
  wpa_printf(MSG_INFO, "TDLS: Error in cancelling retry timeout "
      "(Unknown action_code=%u)", action_code);
 }
}
