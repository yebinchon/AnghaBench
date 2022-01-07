
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {struct dpp_authentication* dpp_auth; int msg_ctx; } ;
struct dpp_authentication {int peer_version; scalar_t__ conf_resp_status; int waiting_conf_result; } ;


 int DPP_EVENT_CONF_FAILED ;
 int DPP_EVENT_CONF_SENT ;
 scalar_t__ DPP_STATUS_OK ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int dpp_auth_deinit (struct dpp_authentication*) ;
 int eloop_cancel_timeout (int ,struct hostapd_data*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct hostapd_data*,int *) ;
 int hostapd_dpp_auth_resp_retry_timeout ;
 int hostapd_dpp_config_result_wait_timeout ;
 int hostapd_dpp_reply_wait_timeout ;
 int hostapd_drv_send_action_cancel_wait (struct hostapd_data*) ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

void hostapd_dpp_gas_status_handler(struct hostapd_data *hapd, int ok)
{
 struct dpp_authentication *auth = hapd->dpp_auth;

 if (!auth)
  return;

 wpa_printf(MSG_DEBUG, "DPP: Configuration exchange completed (ok=%d)",
     ok);
 eloop_cancel_timeout(hostapd_dpp_reply_wait_timeout, hapd, ((void*)0));
 eloop_cancel_timeout(hostapd_dpp_auth_resp_retry_timeout, hapd, ((void*)0));
 hostapd_drv_send_action_cancel_wait(hapd);

 if (ok)
  wpa_msg(hapd->msg_ctx, MSG_INFO, DPP_EVENT_CONF_SENT);
 else
  wpa_msg(hapd->msg_ctx, MSG_INFO, DPP_EVENT_CONF_FAILED);
 dpp_auth_deinit(hapd->dpp_auth);
 hapd->dpp_auth = ((void*)0);
}
