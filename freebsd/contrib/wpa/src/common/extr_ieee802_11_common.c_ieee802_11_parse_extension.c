
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802_11_elems {int const* assoc_delay_info; int const* fils_req_params; size_t fils_req_params_len; int const* fils_key_confirm; size_t fils_key_confirm_len; int const* fils_session; int const* fils_hlp; size_t fils_hlp_len; int const* fils_ip_addr_assign; size_t fils_ip_addr_assign_len; int const* key_delivery; size_t key_delivery_len; int const* fils_wrapped_data; size_t fils_wrapped_data_len; int const* fils_pk; size_t fils_pk_len; int const* fils_nonce; int const* owe_dh; size_t owe_dh_len; int const* password_id; size_t password_id_len; int const* he_capabilities; size_t he_capabilities_len; int const* he_operation; size_t he_operation_len; int const* oci; size_t oci_len; } ;


 int ETH_ALEN ;
 size_t FILS_NONCE_LEN ;
 size_t FILS_SESSION_LEN ;
 int MSG_MSGDUMP ;
 size_t WPA_KEY_RSC_LEN ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ieee802_11_parse_extension(const u8 *pos, size_t elen,
          struct ieee802_11_elems *elems,
          int show_errors)
{
 u8 ext_id;

 if (elen < 1) {
  if (show_errors) {
   wpa_printf(MSG_MSGDUMP,
       "short information element (Ext)");
  }
  return -1;
 }

 ext_id = *pos++;
 elen--;

 switch (ext_id) {
 case 142:
  if (elen != 1)
   break;
  elems->assoc_delay_info = pos;
  break;
 case 136:
  if (elen < 3)
   break;
  elems->fils_req_params = pos;
  elems->fils_req_params_len = elen;
  break;
 case 139:
  elems->fils_key_confirm = pos;
  elems->fils_key_confirm_len = elen;
  break;
 case 135:
  if (elen != FILS_SESSION_LEN)
   break;
  elems->fils_session = pos;
  break;
 case 141:
  if (elen < 2 * ETH_ALEN)
   break;
  elems->fils_hlp = pos;
  elems->fils_hlp_len = elen;
  break;
 case 140:
  if (elen < 1)
   break;
  elems->fils_ip_addr_assign = pos;
  elems->fils_ip_addr_assign_len = elen;
  break;
 case 131:
  if (elen < WPA_KEY_RSC_LEN)
   break;
  elems->key_delivery = pos;
  elems->key_delivery_len = elen;
  break;
 case 134:
  elems->fils_wrapped_data = pos;
  elems->fils_wrapped_data_len = elen;
  break;
 case 137:
  if (elen < 1)
   break;
  elems->fils_pk = pos;
  elems->fils_pk_len = elen;
  break;
 case 138:
  if (elen != FILS_NONCE_LEN)
   break;
  elems->fils_nonce = pos;
  break;
 case 129:
  if (elen < 2)
   break;
  elems->owe_dh = pos;
  elems->owe_dh_len = elen;
  break;
 case 128:
  elems->password_id = pos;
  elems->password_id_len = elen;
  break;
 case 133:
  elems->he_capabilities = pos;
  elems->he_capabilities_len = elen;
  break;
 case 132:
  elems->he_operation = pos;
  elems->he_operation_len = elen;
  break;
 case 130:
  elems->oci = pos;
  elems->oci_len = elen;
  break;
 default:
  if (show_errors) {
   wpa_printf(MSG_MSGDUMP,
       "IEEE 802.11 element parsing ignored unknown element extension (ext_id=%u elen=%u)",
       ext_id, (unsigned int) elen);
  }
  return -1;
 }

 return 0;
}
