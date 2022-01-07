
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ p2p_long_listen; scalar_t__ max_remain_on_chan; TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int MSG_DEBUG ;
 scalar_t__ offchannel_pending_action_tx (struct wpa_supplicant*) ;
 scalar_t__ p2p_listen_end (int *,unsigned int) ;
 int p2p_stop_listen (int *) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_p2p_listen_start (struct wpa_supplicant*,scalar_t__) ;
 int wpas_p2p_listen_work_done (struct wpa_supplicant*) ;

void wpas_p2p_cancel_remain_on_channel_cb(struct wpa_supplicant *wpa_s,
       unsigned int freq)
{
 wpa_printf(MSG_DEBUG, "P2P: Cancel remain-on-channel callback "
     "(p2p_long_listen=%d ms pending_action_tx=%p)",
     wpa_s->p2p_long_listen, offchannel_pending_action_tx(wpa_s));
 wpas_p2p_listen_work_done(wpa_s);
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return;
 if (wpa_s->p2p_long_listen > 0)
  wpa_s->p2p_long_listen -= wpa_s->max_remain_on_chan;
 if (p2p_listen_end(wpa_s->global->p2p, freq) > 0)
  return;
 if (offchannel_pending_action_tx(wpa_s))
  return;
 if (wpa_s->p2p_long_listen > 0) {
  wpa_printf(MSG_DEBUG, "P2P: Continuing long Listen state");
  wpas_p2p_listen_start(wpa_s, wpa_s->p2p_long_listen);
 } else {




  p2p_stop_listen(wpa_s->global->p2p);
 }
}
