
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int p2p_send_action_work; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpas_p2p_free_send_action_work (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_p2p_send_action_work_timeout(void *eloop_ctx,
           void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;

 if (!wpa_s->p2p_send_action_work)
  return;

 wpa_printf(MSG_DEBUG, "P2P: Send Action frame radio work timed out");
 wpas_p2p_free_send_action_work(wpa_s);
}
