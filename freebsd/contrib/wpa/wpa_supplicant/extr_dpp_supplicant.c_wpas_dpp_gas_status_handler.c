
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct dpp_authentication* dpp_auth; } ;
struct dpp_authentication {int peer_version; scalar_t__ conf_resp_status; int waiting_conf_result; struct wpabuf* conf_resp; } ;


 int DPP_EVENT_CONF_FAILED ;
 int DPP_EVENT_CONF_SENT ;
 scalar_t__ DPP_STATUS_OK ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int dpp_auth_deinit (struct dpp_authentication*) ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_supplicant*,int *) ;
 int offchannel_send_action_done (struct wpa_supplicant*) ;
 int wpa_msg (struct wpa_supplicant*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpas_dpp_auth_resp_retry_timeout ;
 int wpas_dpp_config_result_wait_timeout ;
 int wpas_dpp_listen_stop (struct wpa_supplicant*) ;
 int wpas_dpp_reply_wait_timeout ;

__attribute__((used)) static void
wpas_dpp_gas_status_handler(void *ctx, struct wpabuf *resp, int ok)
{
 struct wpa_supplicant *wpa_s = ctx;
 struct dpp_authentication *auth = wpa_s->dpp_auth;

 if (!auth) {
  wpabuf_free(resp);
  return;
 }
 if (auth->conf_resp != resp) {
  wpa_printf(MSG_DEBUG,
      "DPP: Ignore GAS status report (ok=%d) for unknown response",
   ok);
  wpabuf_free(resp);
  return;
 }

 wpa_printf(MSG_DEBUG, "DPP: Configuration exchange completed (ok=%d)",
     ok);
 eloop_cancel_timeout(wpas_dpp_reply_wait_timeout, wpa_s, ((void*)0));
 eloop_cancel_timeout(wpas_dpp_auth_resp_retry_timeout, wpa_s, ((void*)0));
 offchannel_send_action_done(wpa_s);
 wpas_dpp_listen_stop(wpa_s);
 if (ok)
  wpa_msg(wpa_s, MSG_INFO, DPP_EVENT_CONF_SENT);
 else
  wpa_msg(wpa_s, MSG_INFO, DPP_EVENT_CONF_FAILED);
 dpp_auth_deinit(wpa_s->dpp_auth);
 wpa_s->dpp_auth = ((void*)0);
 wpabuf_free(resp);
}
