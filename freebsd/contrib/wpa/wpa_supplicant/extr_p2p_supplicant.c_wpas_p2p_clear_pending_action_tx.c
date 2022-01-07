
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ p2p_send_action_work; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int offchannel_clear_pending_action_tx (struct wpa_supplicant*) ;
 int offchannel_pending_action_tx (struct wpa_supplicant*) ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_free_send_action_work (struct wpa_supplicant*) ;
 int wpas_p2p_send_action_work_timeout ;

__attribute__((used)) static void wpas_p2p_clear_pending_action_tx(struct wpa_supplicant *wpa_s)
{
 if (!offchannel_pending_action_tx(wpa_s))
  return;

 if (wpa_s->p2p_send_action_work) {
  wpas_p2p_free_send_action_work(wpa_s);
  eloop_cancel_timeout(wpas_p2p_send_action_work_timeout,
         wpa_s, ((void*)0));
  offchannel_send_action_done(wpa_s);
 }

 wpa_printf(MSG_DEBUG, "P2P: Drop pending Action TX due to new "
     "operation request");
 offchannel_clear_pending_action_tx(wpa_s);
}
