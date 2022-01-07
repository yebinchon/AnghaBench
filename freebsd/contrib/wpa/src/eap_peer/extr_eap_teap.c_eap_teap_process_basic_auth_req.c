
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;
struct eap_teap_data {int phase2_success; } ;
struct eap_sm {int dummy; } ;


 int MSG_DEBUG ;
 int TEAP_TLV_BASIC_PASSWORD_AUTH_REQ ;
 int TEAP_TLV_BASIC_PASSWORD_AUTH_RESP ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 int eap_teap_put_tlv_hdr (struct wpabuf*,int ,size_t) ;
 struct wpabuf* eap_teap_tlv_nak (int ,int ) ;
 int wpa_hexdump_ascii (int ,char*,int *,size_t) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_teap_process_basic_auth_req(
 struct eap_sm *sm, struct eap_teap_data *data,
 u8 *basic_auth_req, size_t basic_auth_req_len)
{
 const u8 *identity, *password;
 size_t identity_len, password_len, plen;
 struct wpabuf *resp;

 wpa_hexdump_ascii(MSG_DEBUG, "EAP-TEAP: Basic-Password-Auth-Req prompt",
     basic_auth_req, basic_auth_req_len);


 identity = eap_get_config_identity(sm, &identity_len);
 password = eap_get_config_password(sm, &password_len);
 if (!identity || !password ||
     identity_len > 255 || password_len > 255) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: No username/password suitable for Basic-Password-Auth");
  return eap_teap_tlv_nak(0, TEAP_TLV_BASIC_PASSWORD_AUTH_REQ);
 }

 plen = 1 + identity_len + 1 + password_len;
 resp = wpabuf_alloc(sizeof(struct teap_tlv_hdr) + plen);
 if (!resp)
  return ((void*)0);
 eap_teap_put_tlv_hdr(resp, TEAP_TLV_BASIC_PASSWORD_AUTH_RESP, plen);
 wpabuf_put_u8(resp, identity_len);
 wpabuf_put_data(resp, identity, identity_len);
 wpabuf_put_u8(resp, password_len);
 wpabuf_put_data(resp, password, password_len);
 wpa_hexdump_buf_key(MSG_DEBUG, "EAP-TEAP: Basic-Password-Auth-Resp",
       resp);



 data->phase2_success = 1;

 return resp;
}
