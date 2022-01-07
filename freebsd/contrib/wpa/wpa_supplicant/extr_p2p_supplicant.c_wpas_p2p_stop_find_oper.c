
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {scalar_t__ scan_res_handler; TYPE_1__* global; scalar_t__ p2p_long_listen; } ;
struct TYPE_2__ {scalar_t__ p2p; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int p2p_stop_find (scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_clear_pending_action_tx (struct wpa_supplicant*) ;
 int wpas_p2p_join_scan ;
 int wpas_p2p_long_listen_timeout ;
 scalar_t__ wpas_p2p_scan_res_handler ;
 scalar_t__ wpas_p2p_scan_res_ignore_search ;

__attribute__((used)) static void wpas_p2p_stop_find_oper(struct wpa_supplicant *wpa_s)
{
 wpas_p2p_clear_pending_action_tx(wpa_s);
 wpa_s->p2p_long_listen = 0;
 eloop_cancel_timeout(wpas_p2p_long_listen_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_p2p_join_scan, wpa_s, ((void*)0));

 if (wpa_s->global->p2p)
  p2p_stop_find(wpa_s->global->p2p);

 if (wpa_s->scan_res_handler == wpas_p2p_scan_res_handler) {
  wpa_printf(MSG_DEBUG,
      "P2P: Do not consider the scan results after stop_find");
  wpa_s->scan_res_handler = wpas_p2p_scan_res_ignore_search;
 }
}
