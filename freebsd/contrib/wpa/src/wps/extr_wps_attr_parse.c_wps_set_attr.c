
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wps_parse_attr {int oob_dev_password_len; int manufacturer_len; int model_name_len; int model_number_len; int serial_number_len; int dev_name_len; int public_key_len; int encr_settings_len; size_t num_cred; int* cred_len; int ssid_len; int network_key_len; size_t num_req_dev_type; int sec_dev_type_list_len; int const* ap_channel; int const* sec_dev_type_list; int const** req_dev_type; int const* ap_setup_locked; int const* network_key; int const* ssid; int const** cred; int const* encr_settings; int const* public_key; int const* dev_name; int const* serial_number; int const* model_number; int const* model_name; int const* manufacturer; int const* response_type; int const* request_type; int const* selected_registrar; int const* mac_addr; int const* network_key_idx; int const* network_idx; int const* encr_type; int const* auth_type; int const* key_wrap_auth; int const* e_snonce2; int const* e_snonce1; int const* r_snonce2; int const* r_snonce1; int const* e_hash2; int const* e_hash1; int const* r_hash2; int const* r_hash1; int const* authenticator; int const* wps_state; int const* os_version; int const* oob_dev_password; int const* dev_password_id; int const* config_error; int const* assoc_state; int const* rf_bands; int const* primary_dev_type; int const* sel_reg_config_methods; int const* config_methods; int const* conn_type_flags; int const* encr_type_flags; int const* auth_type_flags; int const* uuid_r; int const* uuid_e; int const* registrar_nonce; int const* enrollee_nonce; int const* msg_type; int const* version; } ;
 int DEV_PW_NFC_CONNECTION_HANDOVER ;
 int ETH_ALEN ;
 size_t MAX_CRED_COUNT ;
 size_t MAX_REQ_DEV_TYPE_COUNT ;
 int MSG_DEBUG ;
 int SSID_MAX_LEN ;
 int WPA_GET_BE16 (int const*) ;
 int WPS_AUTHENTICATOR_LEN ;
 int WPS_DEV_NAME_MAX_LEN ;
 int WPS_DEV_TYPE_LEN ;
 int WPS_HASH_LEN ;
 int WPS_KWA_LEN ;
 int WPS_MANUFACTURER_MAX_LEN ;
 int WPS_MODEL_NAME_MAX_LEN ;
 int WPS_MODEL_NUMBER_MAX_LEN ;
 int WPS_NONCE_LEN ;
 int WPS_OOB_DEVICE_PASSWORD_LEN ;
 int WPS_OOB_DEVICE_PASSWORD_MIN_LEN ;
 int WPS_OOB_PUBKEY_HASH_LEN ;
 int WPS_SECRET_NONCE_LEN ;
 int WPS_SEC_DEV_TYPE_MAX_LEN ;
 int WPS_SERIAL_NUMBER_MAX_LEN ;
 int WPS_UUID_LEN ;
 int wpa_printf (int ,char*,int,...) ;
 int wps_parse_vendor_ext (struct wps_parse_attr*,int const*,int) ;

__attribute__((used)) static int wps_set_attr(struct wps_parse_attr *attr, u16 type,
   const u8 *pos, u16 len)
{
 switch (type) {
 case 129:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Version length %u",
       len);
   return -1;
  }
  attr->version = pos;
  break;
 case 154:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Message Type "
       "length %u", len);
   return -1;
  }
  attr->msg_type = pos;
  break;
 case 164:
  if (len != WPS_NONCE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Enrollee Nonce "
       "length %u", len);
   return -1;
  }
  attr->enrollee_nonce = pos;
  break;
 case 146:
  if (len != WPS_NONCE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Registrar Nonce "
       "length %u", len);
   return -1;
  }
  attr->registrar_nonce = pos;
  break;
 case 132:
  if (len != WPS_UUID_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid UUID-E length %u",
       len);
   return -1;
  }
  attr->uuid_e = pos;
  break;
 case 131:
  if (len != WPS_UUID_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid UUID-R length %u",
       len);
   return -1;
  }
  attr->uuid_r = pos;
  break;
 case 174:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Authentication "
       "Type Flags length %u", len);
   return -1;
  }
  attr->auth_type_flags = pos;
  break;
 case 165:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Encryption Type "
       "Flags length %u", len);
   return -1;
  }
  attr->encr_type_flags = pos;
  break;
 case 171:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Connection Type "
       "Flags length %u", len);
   return -1;
  }
  attr->conn_type_flags = pos;
  break;
 case 172:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Config Methods "
       "length %u", len);
   return -1;
  }
  attr->config_methods = pos;
  break;
 case 135:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Selected "
       "Registrar Config Methods length %u", len);
   return -1;
  }
  attr->sel_reg_config_methods = pos;
  break;
 case 148:
  if (len != WPS_DEV_TYPE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Primary Device "
       "Type length %u", len);
   return -1;
  }
  attr->primary_dev_type = pos;
  break;
 case 142:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid RF Bands length "
       "%u", len);
   return -1;
  }
  attr->rf_bands = pos;
  break;
 case 177:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Association State "
       "length %u", len);
   return -1;
  }
  attr->assoc_state = pos;
  break;
 case 173:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Configuration "
       "Error length %u", len);
   return -1;
  }
  attr->config_error = pos;
  break;
 case 168:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Device Password "
       "ID length %u", len);
   return -1;
  }
  attr->dev_password_id = pos;
  break;
 case 150:
  if (len < WPS_OOB_PUBKEY_HASH_LEN + 2 ||
      len > WPS_OOB_PUBKEY_HASH_LEN + 2 +
      WPS_OOB_DEVICE_PASSWORD_LEN ||
      (len < WPS_OOB_PUBKEY_HASH_LEN + 2 +
       WPS_OOB_DEVICE_PASSWORD_MIN_LEN &&
       WPA_GET_BE16(pos + WPS_OOB_PUBKEY_HASH_LEN) !=
       DEV_PW_NFC_CONNECTION_HANDOVER)) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid OOB Device "
       "Password length %u", len);
   return -1;
  }
  attr->oob_dev_password = pos;
  attr->oob_dev_password_len = len;
  break;
 case 149:
  if (len != 4) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid OS Version length "
       "%u", len);
   return -1;
  }
  attr->os_version = pos;
  break;
 case 128:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Wi-Fi Protected "
       "Setup State length %u", len);
   return -1;
  }
  attr->wps_state = pos;
  break;
 case 176:
  if (len != WPS_AUTHENTICATOR_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Authenticator "
       "length %u", len);
   return -1;
  }
  attr->authenticator = pos;
  break;
 case 141:
  if (len != WPS_HASH_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid R-Hash1 length %u",
       len);
   return -1;
  }
  attr->r_hash1 = pos;
  break;
 case 140:
  if (len != WPS_HASH_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid R-Hash2 length %u",
       len);
   return -1;
  }
  attr->r_hash2 = pos;
  break;
 case 163:
  if (len != WPS_HASH_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid E-Hash1 length %u",
       len);
   return -1;
  }
  attr->e_hash1 = pos;
  break;
 case 162:
  if (len != WPS_HASH_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid E-Hash2 length %u",
       len);
   return -1;
  }
  attr->e_hash2 = pos;
  break;
 case 139:
  if (len != WPS_SECRET_NONCE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid R-SNonce1 length "
       "%u", len);
   return -1;
  }
  attr->r_snonce1 = pos;
  break;
 case 138:
  if (len != WPS_SECRET_NONCE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid R-SNonce2 length "
       "%u", len);
   return -1;
  }
  attr->r_snonce2 = pos;
  break;
 case 161:
  if (len != WPS_SECRET_NONCE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid E-SNonce1 length "
       "%u", len);
   return -1;
  }
  attr->e_snonce1 = pos;
  break;
 case 160:
  if (len != WPS_SECRET_NONCE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid E-SNonce2 length "
       "%u", len);
   return -1;
  }
  attr->e_snonce2 = pos;
  break;
 case 159:
  if (len != WPS_KWA_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Key Wrap "
       "Authenticator length %u", len);
   return -1;
  }
  attr->key_wrap_auth = pos;
  break;
 case 175:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Authentication "
       "Type length %u", len);
   return -1;
  }
  attr->auth_type = pos;
  break;
 case 166:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Encryption "
       "Type length %u", len);
   return -1;
  }
  attr->encr_type = pos;
  break;
 case 153:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Network Index "
       "length %u", len);
   return -1;
  }
  attr->network_idx = pos;
  break;
 case 151:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Network Key Index "
       "length %u", len);
   return -1;
  }
  attr->network_key_idx = pos;
  break;
 case 158:
  if (len != ETH_ALEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid MAC Address "
       "length %u", len);
   return -1;
  }
  attr->mac_addr = pos;
  break;
 case 136:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Selected Registrar"
       " length %u", len);
   return -1;
  }
  attr->selected_registrar = pos;
  break;
 case 144:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Request Type "
       "length %u", len);
   return -1;
  }
  attr->request_type = pos;
  break;
 case 143:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Response Type "
       "length %u", len);
   return -1;
  }
  attr->response_type = pos;
  break;
 case 157:
  attr->manufacturer = pos;
  if (len > WPS_MANUFACTURER_MAX_LEN)
   attr->manufacturer_len = WPS_MANUFACTURER_MAX_LEN;
  else
   attr->manufacturer_len = len;
  break;
 case 156:
  attr->model_name = pos;
  if (len > WPS_MODEL_NAME_MAX_LEN)
   attr->model_name_len = WPS_MODEL_NAME_MAX_LEN;
  else
   attr->model_name_len = len;
  break;
 case 155:
  attr->model_number = pos;
  if (len > WPS_MODEL_NUMBER_MAX_LEN)
   attr->model_number_len = WPS_MODEL_NUMBER_MAX_LEN;
  else
   attr->model_number_len = len;
  break;
 case 134:
  attr->serial_number = pos;
  if (len > WPS_SERIAL_NUMBER_MAX_LEN)
   attr->serial_number_len = WPS_SERIAL_NUMBER_MAX_LEN;
  else
   attr->serial_number_len = len;
  break;
 case 169:
  if (len > WPS_DEV_NAME_MAX_LEN) {
   wpa_printf(MSG_DEBUG,
       "WPS: Ignore too long Device Name (len=%u)",
       len);
   break;
  }
  attr->dev_name = pos;
  attr->dev_name_len = len;
  break;
 case 147:






  if (len < 190 || len > 192) {
   wpa_printf(MSG_DEBUG,
       "WPS: Ignore Public Key with unexpected length %u",
       len);
   break;
  }
  attr->public_key = pos;
  attr->public_key_len = len;
  break;
 case 167:
  attr->encr_settings = pos;
  attr->encr_settings_len = len;
  break;
 case 170:
  if (attr->num_cred >= MAX_CRED_COUNT) {
   wpa_printf(MSG_DEBUG, "WPS: Skipped Credential "
       "attribute (max %d credentials)",
       MAX_CRED_COUNT);
   break;
  }
  attr->cred[attr->num_cred] = pos;
  attr->cred_len[attr->num_cred] = len;
  attr->num_cred++;
  break;
 case 133:
  if (len > SSID_MAX_LEN) {
   wpa_printf(MSG_DEBUG,
       "WPS: Ignore too long SSID (len=%u)", len);
   break;
  }
  attr->ssid = pos;
  attr->ssid_len = len;
  break;
 case 152:
  attr->network_key = pos;
  attr->network_key_len = len;
  break;
 case 178:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid AP Setup Locked "
       "length %u", len);
   return -1;
  }
  attr->ap_setup_locked = pos;
  break;
 case 145:
  if (len != WPS_DEV_TYPE_LEN) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Requested Device "
       "Type length %u", len);
   return -1;
  }
  if (attr->num_req_dev_type >= MAX_REQ_DEV_TYPE_COUNT) {
   wpa_printf(MSG_DEBUG, "WPS: Skipped Requested Device "
       "Type attribute (max %u types)",
       MAX_REQ_DEV_TYPE_COUNT);
   break;
  }
  attr->req_dev_type[attr->num_req_dev_type] = pos;
  attr->num_req_dev_type++;
  break;
 case 137:
  if (len > WPS_SEC_DEV_TYPE_MAX_LEN ||
      (len % WPS_DEV_TYPE_LEN) > 0) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Secondary Device "
       "Type length %u", len);
   return -1;
  }
  attr->sec_dev_type_list = pos;
  attr->sec_dev_type_list_len = len;
  break;
 case 130:
  if (wps_parse_vendor_ext(attr, pos, len) < 0)
   return -1;
  break;
 case 179:
  if (len != 2) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid AP Channel "
       "length %u", len);
   return -1;
  }
  attr->ap_channel = pos;
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported attribute type 0x%x "
      "len=%u", type, len);
  break;
 }

 return 0;
}
