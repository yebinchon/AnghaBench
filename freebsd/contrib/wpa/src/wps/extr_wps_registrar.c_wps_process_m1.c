
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct wps_parse_attr {size_t public_key_len; int multi_ap_ext; int * public_key; int os_version; int config_error; int dev_password_id; int assoc_state; int rf_bands; int wps_state; int config_methods; int conn_type_flags; int encr_type_flags; int auth_type_flags; int enrollee_nonce; int mac_addr; int uuid_e; } ;
struct wps_nfc_pw_token {int pubkey_hash; int list; scalar_t__ peer_pk_hash_known; } ;
struct TYPE_10__ {scalar_t__ model_name; scalar_t__ manufacturer; } ;
struct wps_data {scalar_t__ state; int dev_pw_id; int pbc; int use_psk_key; TYPE_3__ peer_dev; int uuid_e; int mac_addr_e; TYPE_7__* wps; int config_error; struct wps_nfc_pw_token* nfc_pw_token; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_11__ {int ap_nfc_dev_pw_id; TYPE_1__* registrar; scalar_t__ ap_nfc_dev_pw; } ;
struct TYPE_9__ {int force_pbc_overlap; int nfc_pw_tokens; int pbc; } ;


 int DEV_PW_DEFAULT ;
 int DEV_PW_MACHINE_SPECIFIED ;
 int DEV_PW_NFC_CONNECTION_HANDOVER ;
 int DEV_PW_P2PS_DEFAULT ;
 int DEV_PW_PUSHBUTTON ;
 int DEV_PW_REGISTRAR_SPECIFIED ;
 int DEV_PW_USER_SPECIFIED ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ RECV_M1 ;
 scalar_t__ SEND_M2 ;
 void* SEND_M2D ;
 int WPS_CFG_MULTIPLE_PBC_DETECTED ;
 int WPS_CFG_PUBLIC_KEY_HASH_MISMATCH ;
 int WPS_CONTINUE ;
 int WPS_EI_NO_ERROR ;
 int WPS_FAILURE ;
 int WPS_HASH_LEN ;
 int WPS_M1 ;
 int WPS_OOB_PUBKEY_HASH_LEN ;
 int dl_list_del (int *) ;
 scalar_t__ os_memcmp_const (int *,int ,int ) ;
 scalar_t__ os_strcmp (scalar_t__,char*) ;
 scalar_t__ os_strncmp (scalar_t__,char*,int) ;
 int sha256_vector (int,int const**,size_t*,int *) ;
 int wpa_printf (int ,char*,...) ;
 int wps_fail_event (TYPE_7__*,int ,int ,int ,int ) ;
 struct wps_nfc_pw_token* wps_get_nfc_pw_token (int *,int) ;
 int wps_pbc_overlap_event (TYPE_7__*) ;
 scalar_t__ wps_process_assoc_state (struct wps_data*,int ) ;
 scalar_t__ wps_process_auth_type_flags (struct wps_data*,int ) ;
 scalar_t__ wps_process_config_error (struct wps_data*,int ) ;
 scalar_t__ wps_process_config_methods (struct wps_data*,int ) ;
 scalar_t__ wps_process_conn_type_flags (struct wps_data*,int ) ;
 scalar_t__ wps_process_dev_password_id (struct wps_data*,int ) ;
 scalar_t__ wps_process_device_attrs (TYPE_3__*,struct wps_parse_attr*) ;
 scalar_t__ wps_process_encr_type_flags (struct wps_data*,int ) ;
 scalar_t__ wps_process_enrollee_nonce (struct wps_data*,int ) ;
 scalar_t__ wps_process_mac_addr (struct wps_data*,int ) ;
 scalar_t__ wps_process_os_version (TYPE_3__*,int ) ;
 scalar_t__ wps_process_pubkey (struct wps_data*,int *,size_t) ;
 scalar_t__ wps_process_rf_bands (TYPE_3__*,int ) ;
 scalar_t__ wps_process_uuid_e (struct wps_data*,int ) ;
 int wps_process_vendor_ext_m1 (TYPE_3__*,int ) ;
 scalar_t__ wps_process_wps_state (struct wps_data*,int ) ;
 int wps_registrar_add_pbc_session (TYPE_1__*,int ,int ) ;
 int wps_registrar_p2p_dev_addr_match (struct wps_data*) ;
 scalar_t__ wps_registrar_pbc_overlap (TYPE_1__*,int ,int ) ;
 int wps_registrar_skip_overlap (struct wps_data*) ;

__attribute__((used)) static enum wps_process_res wps_process_m1(struct wps_data *wps,
        struct wps_parse_attr *attr)
{
 wpa_printf(MSG_DEBUG, "WPS: Received M1");

 if (wps->state != RECV_M1) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M1", wps->state);
  return WPS_FAILURE;
 }

 if (wps_process_uuid_e(wps, attr->uuid_e) ||
     wps_process_mac_addr(wps, attr->mac_addr) ||
     wps_process_enrollee_nonce(wps, attr->enrollee_nonce) ||
     wps_process_pubkey(wps, attr->public_key, attr->public_key_len) ||
     wps_process_auth_type_flags(wps, attr->auth_type_flags) ||
     wps_process_encr_type_flags(wps, attr->encr_type_flags) ||
     wps_process_conn_type_flags(wps, attr->conn_type_flags) ||
     wps_process_config_methods(wps, attr->config_methods) ||
     wps_process_wps_state(wps, attr->wps_state) ||
     wps_process_device_attrs(&wps->peer_dev, attr) ||
     wps_process_rf_bands(&wps->peer_dev, attr->rf_bands) ||
     wps_process_assoc_state(wps, attr->assoc_state) ||
     wps_process_dev_password_id(wps, attr->dev_password_id) ||
     wps_process_config_error(wps, attr->config_error) ||
     wps_process_os_version(&wps->peer_dev, attr->os_version))
  return WPS_FAILURE;

 if (wps->dev_pw_id < 0x10 &&
     wps->dev_pw_id != DEV_PW_DEFAULT &&
     wps->dev_pw_id != DEV_PW_P2PS_DEFAULT &&
     wps->dev_pw_id != DEV_PW_USER_SPECIFIED &&
     wps->dev_pw_id != DEV_PW_MACHINE_SPECIFIED &&
     wps->dev_pw_id != DEV_PW_REGISTRAR_SPECIFIED &&



     (wps->dev_pw_id != DEV_PW_PUSHBUTTON ||
      !wps->wps->registrar->pbc)) {
  wpa_printf(MSG_DEBUG, "WPS: Unsupported Device Password ID %d",
      wps->dev_pw_id);
  wps->state = SEND_M2D;
  return WPS_CONTINUE;
 }
 if (wps->dev_pw_id == DEV_PW_PUSHBUTTON) {
  if ((wps->wps->registrar->force_pbc_overlap ||
       wps_registrar_pbc_overlap(wps->wps->registrar,
            wps->mac_addr_e, wps->uuid_e) ||
       !wps_registrar_p2p_dev_addr_match(wps)) &&
      !wps_registrar_skip_overlap(wps)) {
   wpa_printf(MSG_DEBUG, "WPS: PBC overlap - deny PBC "
       "negotiation");
   wps->state = SEND_M2D;
   wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
   wps_pbc_overlap_event(wps->wps);
   wps_fail_event(wps->wps, WPS_M1,
           WPS_CFG_MULTIPLE_PBC_DETECTED,
           WPS_EI_NO_ERROR, wps->mac_addr_e);
   wps->wps->registrar->force_pbc_overlap = 1;
   return WPS_CONTINUE;
  }
  wps_registrar_add_pbc_session(wps->wps->registrar,
           wps->mac_addr_e, wps->uuid_e);
  wps->pbc = 1;
 }
 wps_process_vendor_ext_m1(&wps->peer_dev, attr->multi_ap_ext);

 wps->state = SEND_M2;
 return WPS_CONTINUE;
}
