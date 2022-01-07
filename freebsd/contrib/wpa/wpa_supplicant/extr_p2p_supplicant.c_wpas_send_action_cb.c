
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_radio_work* p2p_send_action_work; } ;
struct wpa_radio_work {scalar_t__ started; struct send_action_work* ctx; struct wpa_supplicant* wpa_s; } ;
struct send_action_work {int wait_time; int len; int buf; int bssid; int src; int dst; int freq; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 scalar_t__ offchannel_send_action (struct wpa_supplicant*,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int os_free (struct send_action_work*) ;
 int radio_work_done (struct wpa_radio_work*) ;
 int wpas_p2p_send_action_tx_status ;
 int wpas_p2p_send_action_work_timeout ;

__attribute__((used)) static void wpas_send_action_cb(struct wpa_radio_work *work, int deinit)
{
 struct wpa_supplicant *wpa_s = work->wpa_s;
 struct send_action_work *awork = work->ctx;

 if (deinit) {
  if (work->started) {
   eloop_cancel_timeout(wpas_p2p_send_action_work_timeout,
          wpa_s, ((void*)0));
   wpa_s->p2p_send_action_work = ((void*)0);
   offchannel_send_action_done(wpa_s);
  }
  os_free(awork);
  return;
 }

 if (offchannel_send_action(wpa_s, awork->freq, awork->dst, awork->src,
       awork->bssid, awork->buf, awork->len,
       awork->wait_time,
       wpas_p2p_send_action_tx_status, 1) < 0) {
  os_free(awork);
  radio_work_done(work);
  return;
 }
 wpa_s->p2p_send_action_work = work;
}
