
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* p2p_send_action_work; } ;
struct send_action_work {int wait_time; } ;
struct TYPE_2__ {struct send_action_work* ctx; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int ,int,int ,struct wpa_supplicant*,int *) ;
 int wpa_printf (int ,char*,TYPE_1__*,int) ;
 int wpas_p2p_free_send_action_work (struct wpa_supplicant*) ;
 int wpas_p2p_send_action_work_timeout ;

__attribute__((used)) static void wpas_p2p_action_tx_clear(struct wpa_supplicant *wpa_s)
{
 if (wpa_s->p2p_send_action_work) {
  struct send_action_work *awork;

  awork = wpa_s->p2p_send_action_work->ctx;
  wpa_printf(MSG_DEBUG,
      "P2P: Clear Action TX work @%p (wait_time=%u)",
      wpa_s->p2p_send_action_work, awork->wait_time);
  if (awork->wait_time == 0) {
   wpas_p2p_free_send_action_work(wpa_s);
  } else {






   eloop_cancel_timeout(wpas_p2p_send_action_work_timeout,
          wpa_s, ((void*)0));
   eloop_register_timeout(
    0, awork->wait_time * 1000,
    wpas_p2p_send_action_work_timeout,
    wpa_s, ((void*)0));
  }
 }
}
