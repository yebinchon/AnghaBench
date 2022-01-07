
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dpp_resp_wait_time; int dpp_in_response_listen; struct dpp_authentication* dpp_auth; int dpp_last_init; } ;
struct os_reltime {int sec; int usec; } ;
struct dpp_authentication {unsigned int curr_freq; unsigned int neg_freq; scalar_t__ auth_req_ack; int waiting_auth_resp; } ;


 int DPP_EVENT_AUTH_INIT_FAILED ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int dpp_auth_deinit (struct dpp_authentication*) ;
 int eloop_register_timeout (unsigned int,unsigned int,void (*) (void*,void*),struct wpa_supplicant*,int *) ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int os_get_reltime (struct os_reltime*) ;
 int os_reltime_sub (struct os_reltime*,int *,struct os_reltime*) ;
 int wpa_msg (struct wpa_supplicant*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpas_dpp_auth_init_next (struct wpa_supplicant*) ;
 int wpas_dpp_listen_start (struct wpa_supplicant*,unsigned int) ;
 int wpas_dpp_listen_stop (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_dpp_reply_wait_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 struct dpp_authentication *auth = wpa_s->dpp_auth;
 unsigned int freq;
 struct os_reltime now, diff;
 unsigned int wait_time, diff_ms;

 if (!auth || !auth->waiting_auth_resp)
  return;

 wait_time = wpa_s->dpp_resp_wait_time ?
  wpa_s->dpp_resp_wait_time : 2000;
 os_get_reltime(&now);
 os_reltime_sub(&now, &wpa_s->dpp_last_init, &diff);
 diff_ms = diff.sec * 1000 + diff.usec / 1000;
 wpa_printf(MSG_DEBUG,
     "DPP: Reply wait timeout - wait_time=%u diff_ms=%u",
     wait_time, diff_ms);

 if (auth->auth_req_ack && diff_ms >= wait_time) {


  wpa_printf(MSG_INFO,
      "DPP: No response received from responder - stopping initiation attempt");
  wpa_msg(wpa_s, MSG_INFO, DPP_EVENT_AUTH_INIT_FAILED);
  offchannel_send_action_done(wpa_s);
  wpas_dpp_listen_stop(wpa_s);
  dpp_auth_deinit(auth);
  wpa_s->dpp_auth = ((void*)0);
  return;
 }

 if (diff_ms >= wait_time) {


  wpa_printf(MSG_DEBUG,
      "DPP: Continue Initiator channel iteration");
  offchannel_send_action_done(wpa_s);
  wpas_dpp_listen_stop(wpa_s);
  wpas_dpp_auth_init_next(wpa_s);
  return;
 }







 wait_time -= diff_ms;

 freq = auth->curr_freq;
 if (auth->neg_freq > 0)
  freq = auth->neg_freq;
 wpa_printf(MSG_DEBUG,
     "DPP: Continue reply wait on channel %u MHz for %u ms",
     freq, wait_time);
 wpa_s->dpp_in_response_listen = 1;
 wpas_dpp_listen_start(wpa_s, freq);

 eloop_register_timeout(wait_time / 1000, (wait_time % 1000) * 1000,
          wpas_dpp_reply_wait_timeout, wpa_s, ((void*)0));
}
