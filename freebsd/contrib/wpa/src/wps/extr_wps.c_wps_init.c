
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wps_parse_attr {int * request_type; } ;
struct TYPE_6__ {int mac_addr; } ;
struct wps_data {scalar_t__ dev_pw_id; int dev_password_len; scalar_t__ alt_dev_pw_id; int alt_dev_password_len; int peer_pubkey_hash_set; int multi_ap_backhaul_sta; int peer_pubkey_hash; int pbc_in_m1; int use_psk_key; int p2p_dev_addr; TYPE_3__ peer_dev; int * dev_password; int * new_ap_settings; int request_type; scalar_t__ registrar; int state; scalar_t__ pbc; int * alt_dev_password; int uuid_e; int mac_addr_e; int uuid_r; TYPE_2__* wps; } ;
struct wps_config {scalar_t__ dev_pw_id; int pin_len; int multi_ap_backhaul_sta; int peer_pubkey_hash; int pbc_in_m1; int use_psk_key; int p2p_dev_addr; int peer_addr; int * new_ap_settings; scalar_t__ assoc_wps_ie; scalar_t__ pbc; TYPE_2__* wps; scalar_t__ registrar; int * pin; } ;
struct TYPE_4__ {int mac_addr; } ;
struct TYPE_5__ {scalar_t__ ap_nfc_dev_pw_id; int ap_nfc_dev_pw; scalar_t__ ap; int uuid; TYPE_1__ dev; } ;


 scalar_t__ DEV_PW_NFC_CONNECTION_HANDOVER ;
 scalar_t__ DEV_PW_PUSHBUTTON ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 int RECV_M1 ;
 int SEND_M1 ;
 int WPS_OOB_PUBKEY_HASH_LEN ;
 int WPS_UUID_LEN ;
 int bin_clear_free (int *,int) ;
 int os_free (struct wps_data*) ;
 int os_memcpy (int ,int ,int ) ;
 void* os_memdup (int *,int) ;
 scalar_t__ os_strdup (char*) ;
 struct wps_data* os_zalloc (int) ;
 int wpa_hexdump_buf (int ,char*,scalar_t__) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_head (int ) ;
 int wpabuf_len (int ) ;
 scalar_t__ wps_parse_msg (scalar_t__,struct wps_parse_attr*) ;

struct wps_data * wps_init(const struct wps_config *cfg)
{
 struct wps_data *data = os_zalloc(sizeof(*data));
 if (data == ((void*)0))
  return ((void*)0);
 data->wps = cfg->wps;
 data->registrar = cfg->registrar;
 if (cfg->registrar) {
  os_memcpy(data->uuid_r, cfg->wps->uuid, WPS_UUID_LEN);
 } else {
  os_memcpy(data->mac_addr_e, cfg->wps->dev.mac_addr, ETH_ALEN);
  os_memcpy(data->uuid_e, cfg->wps->uuid, WPS_UUID_LEN);
 }
 if (cfg->pin) {
  data->dev_pw_id = cfg->dev_pw_id;
  data->dev_password = os_memdup(cfg->pin, cfg->pin_len);
  if (data->dev_password == ((void*)0)) {
   os_free(data);
   return ((void*)0);
  }
  data->dev_password_len = cfg->pin_len;
  wpa_hexdump_key(MSG_DEBUG, "WPS: AP PIN dev_password",
    data->dev_password, data->dev_password_len);
 }
 data->pbc = cfg->pbc;
 if (cfg->pbc) {

  data->dev_pw_id = DEV_PW_PUSHBUTTON;
  bin_clear_free(data->dev_password, data->dev_password_len);
  data->dev_password = (u8 *) os_strdup("00000000");
  if (data->dev_password == ((void*)0)) {
   os_free(data);
   return ((void*)0);
  }
  data->dev_password_len = 8;
 }

 data->state = data->registrar ? RECV_M1 : SEND_M1;

 if (cfg->assoc_wps_ie) {
  struct wps_parse_attr attr;
  wpa_hexdump_buf(MSG_DEBUG, "WPS: WPS IE from (Re)AssocReq",
    cfg->assoc_wps_ie);
  if (wps_parse_msg(cfg->assoc_wps_ie, &attr) < 0) {
   wpa_printf(MSG_DEBUG, "WPS: Failed to parse WPS IE "
       "from (Re)AssocReq");
  } else if (attr.request_type == ((void*)0)) {
   wpa_printf(MSG_DEBUG, "WPS: No Request Type attribute "
       "in (Re)AssocReq WPS IE");
  } else {
   wpa_printf(MSG_DEBUG, "WPS: Request Type (from WPS IE "
       "in (Re)AssocReq WPS IE): %d",
       *attr.request_type);
   data->request_type = *attr.request_type;
  }
 }

 if (cfg->new_ap_settings) {
  data->new_ap_settings =
   os_memdup(cfg->new_ap_settings,
      sizeof(*data->new_ap_settings));
  if (data->new_ap_settings == ((void*)0)) {
   bin_clear_free(data->dev_password,
           data->dev_password_len);
   os_free(data);
   return ((void*)0);
  }
 }

 if (cfg->peer_addr)
  os_memcpy(data->peer_dev.mac_addr, cfg->peer_addr, ETH_ALEN);
 if (cfg->p2p_dev_addr)
  os_memcpy(data->p2p_dev_addr, cfg->p2p_dev_addr, ETH_ALEN);

 data->use_psk_key = cfg->use_psk_key;
 data->pbc_in_m1 = cfg->pbc_in_m1;

 if (cfg->peer_pubkey_hash) {
  os_memcpy(data->peer_pubkey_hash, cfg->peer_pubkey_hash,
     WPS_OOB_PUBKEY_HASH_LEN);
  data->peer_pubkey_hash_set = 1;
 }

 data->multi_ap_backhaul_sta = cfg->multi_ap_backhaul_sta;

 return data;
}
