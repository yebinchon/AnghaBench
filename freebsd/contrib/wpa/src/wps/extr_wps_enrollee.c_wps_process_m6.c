
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {int r_snonce2; int key_wrap_auth; int * version2; int encr_settings_len; int encr_settings; int authenticator; int enrollee_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int cb_ctx; int (* event_cb ) (int ,int ,int *) ;scalar_t__ ap; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_M6 ;
 scalar_t__ SEND_M7 ;
 void* SEND_WSC_NACK ;
 int WPS_CONTINUE ;
 int WPS_EV_AP_PIN_SUCCESS ;
 int stub1 (int ,int ,int *) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 struct wpabuf* wps_decrypt_encr_settings (struct wps_data*,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;
 scalar_t__ wps_process_authenticator (struct wps_data*,int ,struct wpabuf const*) ;
 scalar_t__ wps_process_enrollee_nonce (struct wps_data*,int ) ;
 scalar_t__ wps_process_key_wrap_auth (struct wps_data*,struct wpabuf*,int ) ;
 scalar_t__ wps_process_r_snonce2 (struct wps_data*,int ) ;
 scalar_t__ wps_validate_m6_encr (struct wpabuf*,int ) ;

__attribute__((used)) static enum wps_process_res wps_process_m6(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 struct wpabuf *decrypted;
 struct wps_parse_attr eattr;

 wpa_printf(MSG_DEBUG, "WPS: Received M6");

 if (wps->state != RECV_M6) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M6", wps->state);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_process_enrollee_nonce(wps, attr->enrollee_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg)) {
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

 if (wps_validate_m6_encr(decrypted, attr->version2 != ((void*)0)) < 0) {
  wpabuf_clear_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wpa_printf(MSG_DEBUG, "WPS: Processing decrypted Encrypted Settings "
     "attribute");
 if (wps_parse_msg(decrypted, &eattr) < 0 ||
     wps_process_key_wrap_auth(wps, decrypted, eattr.key_wrap_auth) ||
     wps_process_r_snonce2(wps, eattr.r_snonce2)) {
  wpabuf_clear_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }
 wpabuf_clear_free(decrypted);

 if (wps->wps->ap)
  wps->wps->event_cb(wps->wps->cb_ctx, WPS_EV_AP_PIN_SUCCESS,
       ((void*)0));

 wps->state = SEND_M7;
 return WPS_CONTINUE;
}
