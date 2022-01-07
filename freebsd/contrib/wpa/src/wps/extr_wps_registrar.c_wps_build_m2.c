
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_data {int int_reg; int state; TYPE_2__* nfc_pw_token; TYPE_1__* wps; int dev_pw_id; int uuid_r; int nonce_r; } ;
struct wpabuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ pw_id; scalar_t__ pk_hash_provided_oob; } ;
struct TYPE_3__ {int dev; int cb_ctx; int (* rf_band_cb ) (int ) ;int registrar; } ;


 scalar_t__ DEV_PW_NFC_CONNECTION_HANDOVER ;
 int MSG_DEBUG ;
 int RECV_DONE ;
 int RECV_M3 ;
 int WPS_CFG_NO_ERROR ;
 int WPS_M2 ;
 int WPS_NONCE_LEN ;
 int WPS_UUID_LEN ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int stub1 (int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_assoc_state (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_auth_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_authenticator (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_config_error (struct wpabuf*,int ) ;
 scalar_t__ wps_build_config_methods_r (int ,struct wpabuf*) ;
 scalar_t__ wps_build_conn_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_cred (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_dev_password_id (struct wpabuf*,int ) ;
 scalar_t__ wps_build_device_attrs (int *,struct wpabuf*) ;
 scalar_t__ wps_build_encr_settings (struct wps_data*,struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wps_build_encr_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_enrollee_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_key_wrap_auth (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_os_version (int *,struct wpabuf*) ;
 scalar_t__ wps_build_public_key (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_registrar_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_rf_bands (int *,struct wpabuf*,int ) ;
 scalar_t__ wps_build_uuid_r (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;
 scalar_t__ wps_derive_keys (struct wps_data*) ;

__attribute__((used)) static struct wpabuf * wps_build_m2(struct wps_data *wps)
{
 struct wpabuf *msg;
 int config_in_m2 = 0;

 if (random_get_bytes(wps->nonce_r, WPS_NONCE_LEN) < 0)
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "WPS: Registrar Nonce",
      wps->nonce_r, WPS_NONCE_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: UUID-R", wps->uuid_r, WPS_UUID_LEN);

 wpa_printf(MSG_DEBUG, "WPS: Building Message M2");
 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M2) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_uuid_r(wps, msg) ||
     wps_build_public_key(wps, msg) ||
     wps_derive_keys(wps) ||
     wps_build_auth_type_flags(wps, msg) ||
     wps_build_encr_type_flags(wps, msg) ||
     wps_build_conn_type_flags(wps, msg) ||
     wps_build_config_methods_r(wps->wps->registrar, msg) ||
     wps_build_device_attrs(&wps->wps->dev, msg) ||
     wps_build_rf_bands(&wps->wps->dev, msg,
          wps->wps->rf_band_cb(wps->wps->cb_ctx)) ||
     wps_build_assoc_state(wps, msg) ||
     wps_build_config_error(msg, WPS_CFG_NO_ERROR) ||
     wps_build_dev_password_id(msg, wps->dev_pw_id) ||
     wps_build_os_version(&wps->wps->dev, msg) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0, 0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }
 if (wps_build_authenticator(wps, msg)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 wps->int_reg = 1;
 wps->state = config_in_m2 ? RECV_DONE : RECV_M3;
 return msg;
}
