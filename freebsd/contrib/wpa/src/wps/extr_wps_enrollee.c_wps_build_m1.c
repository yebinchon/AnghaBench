
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wps_data {scalar_t__ dev_password_len; int state; TYPE_1__* wps; int dev_pw_id; int mac_addr_e; int uuid_e; scalar_t__ multi_ap_backhaul_sta; int pbc_in_m1; int nonce_e; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int config_methods; int dev; int cb_ctx; int (* rf_band_cb ) (int ) ;scalar_t__ ap; } ;


 int MSG_DEBUG ;
 int MULTI_AP_BACKHAUL_STA ;
 int RECV_M2 ;
 int WPS_CFG_NO_ERROR ;
 int WPS_CONFIG_DISPLAY ;
 int WPS_CONFIG_PHY_PUSHBUTTON ;
 int WPS_CONFIG_PUSHBUTTON ;
 int WPS_CONFIG_VIRT_PUSHBUTTON ;
 int WPS_M1 ;
 int WPS_NONCE_LEN ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int stub1 (int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_assoc_state (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_auth_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_config_error (struct wpabuf*,int ) ;
 scalar_t__ wps_build_config_methods (struct wpabuf*,int) ;
 scalar_t__ wps_build_conn_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_dev_password_id (struct wpabuf*,int ) ;
 scalar_t__ wps_build_device_attrs (int *,struct wpabuf*) ;
 scalar_t__ wps_build_encr_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_enrollee_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_mac_addr (struct wpabuf*,int ) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_os_version (int *,struct wpabuf*) ;
 scalar_t__ wps_build_public_key (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_rf_bands (int *,struct wpabuf*,int ) ;
 scalar_t__ wps_build_uuid_e (struct wpabuf*,int ) ;
 scalar_t__ wps_build_vendor_ext_m1 (int *,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ,int ) ;
 scalar_t__ wps_build_wps_state (struct wps_data*,struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * wps_build_m1(struct wps_data *wps)
{
 struct wpabuf *msg;
 u16 config_methods;
 u8 multi_ap_backhaul_sta = 0;

 if (random_get_bytes(wps->nonce_e, WPS_NONCE_LEN) < 0)
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "WPS: Enrollee Nonce",
      wps->nonce_e, WPS_NONCE_LEN);

 wpa_printf(MSG_DEBUG, "WPS: Building Message M1");
 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 config_methods = wps->wps->config_methods;
 if (wps->wps->ap && !wps->pbc_in_m1 &&
     (wps->dev_password_len != 0 ||
      (config_methods & WPS_CONFIG_DISPLAY))) {
  config_methods &= ~WPS_CONFIG_PUSHBUTTON;
  config_methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
        WPS_CONFIG_PHY_PUSHBUTTON);
 }

 if (wps->multi_ap_backhaul_sta)
  multi_ap_backhaul_sta = MULTI_AP_BACKHAUL_STA;

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M1) ||
     wps_build_uuid_e(msg, wps->uuid_e) ||
     wps_build_mac_addr(msg, wps->mac_addr_e) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_public_key(wps, msg) ||
     wps_build_auth_type_flags(wps, msg) ||
     wps_build_encr_type_flags(wps, msg) ||
     wps_build_conn_type_flags(wps, msg) ||
     wps_build_config_methods(msg, config_methods) ||
     wps_build_wps_state(wps, msg) ||
     wps_build_device_attrs(&wps->wps->dev, msg) ||
     wps_build_rf_bands(&wps->wps->dev, msg,
          wps->wps->rf_band_cb(wps->wps->cb_ctx)) ||
     wps_build_assoc_state(wps, msg) ||
     wps_build_dev_password_id(msg, wps->dev_pw_id) ||
     wps_build_config_error(msg, WPS_CFG_NO_ERROR) ||
     wps_build_os_version(&wps->wps->dev, msg) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0, multi_ap_backhaul_sta) ||
     wps_build_vendor_ext_m1(&wps->wps->dev, msg)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 wps->state = RECV_M2;
 return msg;
}
