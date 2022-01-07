
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {int * version2; int num_cred; int cred_len; int cred; int key_wrap_auth; int encr_settings_len; int encr_settings; int authenticator; int enrollee_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; int config_error; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int ap; scalar_t__ ap_setup_locked; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_M8 ;
 void* SEND_WSC_NACK ;
 int WPS_CFG_SETUP_LOCKED ;
 int WPS_CONTINUE ;
 scalar_t__ WPS_MSG_DONE ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 struct wpabuf* wps_decrypt_encr_settings (struct wps_data*,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;
 scalar_t__ wps_process_ap_settings_e (struct wps_data*,struct wps_parse_attr*,struct wpabuf*,int ) ;
 scalar_t__ wps_process_authenticator (struct wps_data*,int ,struct wpabuf const*) ;
 scalar_t__ wps_process_creds (struct wps_data*,int ,int ,int ,int ) ;
 scalar_t__ wps_process_enrollee_nonce (struct wps_data*,int ) ;
 scalar_t__ wps_process_key_wrap_auth (struct wps_data*,struct wpabuf*,int ) ;
 scalar_t__ wps_validate_m8_encr (struct wpabuf*,int ,int ) ;

__attribute__((used)) static enum wps_process_res wps_process_m8(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 struct wpabuf *decrypted;
 struct wps_parse_attr eattr;

 wpa_printf(MSG_DEBUG, "WPS: Received M8");

 if (wps->state != RECV_M8) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M8", wps->state);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_process_enrollee_nonce(wps, attr->enrollee_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps->wps->ap && wps->wps->ap_setup_locked) {





  wpa_printf(MSG_DEBUG, "WPS: AP Setup is locked - refuse "
      "registration of a new Registrar");
  wps->config_error = WPS_CFG_SETUP_LOCKED;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 decrypted = wps_decrypt_encr_settings(wps, attr->encr_settings,
           attr->encr_settings_len);
 if (decrypted == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Failed to decrypted Encrypted "
      "Settings attribute");
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_validate_m8_encr(decrypted, wps->wps->ap,
     attr->version2 != ((void*)0)) < 0) {
  wpabuf_clear_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wpa_printf(MSG_DEBUG, "WPS: Processing decrypted Encrypted Settings "
     "attribute");
 if (wps_parse_msg(decrypted, &eattr) < 0 ||
     wps_process_key_wrap_auth(wps, decrypted, eattr.key_wrap_auth) ||
     wps_process_creds(wps, eattr.cred, eattr.cred_len,
         eattr.num_cred, attr->version2 != ((void*)0)) ||
     wps_process_ap_settings_e(wps, &eattr, decrypted,
          attr->version2 != ((void*)0))) {
  wpabuf_clear_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }
 wpabuf_clear_free(decrypted);

 wps->state = WPS_MSG_DONE;
 return WPS_CONTINUE;
}
