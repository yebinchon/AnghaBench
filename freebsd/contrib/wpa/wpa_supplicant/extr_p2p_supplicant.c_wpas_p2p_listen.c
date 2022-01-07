
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {unsigned int p2p_long_listen; unsigned int max_remain_on_chan; TYPE_1__* global; scalar_t__ p2p_lo_started; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (unsigned int,int ,int ,struct wpa_supplicant*,int *) ;
 int p2p_stop_find (int *) ;
 int wpa_printf (int ,char*) ;
 int wpa_supplicant_cancel_sched_scan (struct wpa_supplicant*) ;
 int wpas_p2p_clear_pending_action_tx (struct wpa_supplicant*) ;
 int wpas_p2p_listen_start (struct wpa_supplicant*,unsigned int) ;
 int wpas_p2p_long_listen_timeout ;

int wpas_p2p_listen(struct wpa_supplicant *wpa_s, unsigned int timeout)
{
 int res;

 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return -1;

 if (wpa_s->p2p_lo_started) {
  wpa_printf(MSG_DEBUG,
   "P2P: Cannot start P2P listen, it is offloaded");
  return -1;
 }

 wpa_supplicant_cancel_sched_scan(wpa_s);
 wpas_p2p_clear_pending_action_tx(wpa_s);

 if (timeout == 0) {





  timeout = 3600;
 }
 eloop_cancel_timeout(wpas_p2p_long_listen_timeout, wpa_s, ((void*)0));
 wpa_s->p2p_long_listen = 0;






 if (wpa_s->global->p2p)
  p2p_stop_find(wpa_s->global->p2p);

 res = wpas_p2p_listen_start(wpa_s, timeout * 1000);
 if (res == 0 && timeout * 1000 > wpa_s->max_remain_on_chan) {
  wpa_s->p2p_long_listen = timeout * 1000;
  eloop_register_timeout(timeout, 0,
           wpas_p2p_long_listen_timeout,
           wpa_s, ((void*)0));
 }

 return res;
}
