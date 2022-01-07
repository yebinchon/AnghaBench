
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tlv_crypto_binding_tlv {int * compound_mac; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; } ;
struct eap_fast_data {int id_len; int * session_id; int ssl; scalar_t__ phase2_success; int anon_provisioning; } ;
typedef int cmac ;


 int DECISION_FAIL ;
 int EAP_FAST_CMK_LEN ;
 int EAP_TYPE_FAST ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 int SHA1_MAC_LEN ;
 scalar_t__ eap_fast_derive_msk (struct eap_fast_data*) ;
 scalar_t__ eap_fast_get_cmk (struct eap_sm*,struct eap_fast_data*,int *) ;
 scalar_t__ eap_fast_validate_crypto_binding (struct eap_tlv_crypto_binding_tlv*) ;
 int eap_fast_write_crypto_binding (struct eap_tlv_crypto_binding_tlv*,struct eap_tlv_crypto_binding_tlv*,int *) ;
 int * eap_peer_tls_derive_session_id (struct eap_sm*,int *,int ,int*) ;
 int hmac_sha1 (int *,int,int *,size_t,int *) ;
 int os_free (int *) ;
 int os_memcmp_const (int *,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (int *,int ,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_fast_process_crypto_binding(
 struct eap_sm *sm, struct eap_fast_data *data,
 struct eap_method_ret *ret,
 struct eap_tlv_crypto_binding_tlv *_bind, size_t bind_len)
{
 struct wpabuf *resp;
 u8 *pos;
 u8 cmk[EAP_FAST_CMK_LEN], cmac[SHA1_MAC_LEN];
 int res;
 size_t len;

 if (eap_fast_validate_crypto_binding(_bind) < 0)
  return ((void*)0);

 if (eap_fast_get_cmk(sm, data, cmk) < 0)
  return ((void*)0);


 os_memcpy(cmac, _bind->compound_mac, sizeof(cmac));
 os_memset(_bind->compound_mac, 0, sizeof(cmac));
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Crypto-Binding TLV for Compound "
      "MAC calculation", (u8 *) _bind, bind_len);
 hmac_sha1(cmk, EAP_FAST_CMK_LEN, (u8 *) _bind, bind_len,
    _bind->compound_mac);
 res = os_memcmp_const(cmac, _bind->compound_mac, sizeof(cmac));
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Received Compound MAC",
      cmac, sizeof(cmac));
 wpa_hexdump(MSG_MSGDUMP, "EAP-FAST: Calculated Compound MAC",
      _bind->compound_mac, sizeof(cmac));
 if (res != 0) {
  wpa_printf(MSG_INFO, "EAP-FAST: Compound MAC did not match");
  os_memcpy(_bind->compound_mac, cmac, sizeof(cmac));
  return ((void*)0);
 }






 len = sizeof(struct eap_tlv_crypto_binding_tlv);
 resp = wpabuf_alloc(len);
 if (resp == ((void*)0))
  return ((void*)0);

 if (!data->anon_provisioning && data->phase2_success &&
     eap_fast_derive_msk(data) < 0) {
  wpa_printf(MSG_INFO, "EAP-FAST: Failed to generate MSK");
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  data->phase2_success = 0;
  wpabuf_clear_free(resp);
  return ((void*)0);
 }

 if (!data->anon_provisioning && data->phase2_success) {
  os_free(data->session_id);
  data->session_id = eap_peer_tls_derive_session_id(
   sm, &data->ssl, EAP_TYPE_FAST, &data->id_len);
  if (data->session_id) {
   wpa_hexdump(MSG_DEBUG, "EAP-FAST: Derived Session-Id",
        data->session_id, data->id_len);
  } else {
   wpa_printf(MSG_ERROR, "EAP-FAST: Failed to derive "
       "Session-Id");
   wpabuf_clear_free(resp);
   return ((void*)0);
  }
 }

 pos = wpabuf_put(resp, sizeof(struct eap_tlv_crypto_binding_tlv));
 eap_fast_write_crypto_binding((struct eap_tlv_crypto_binding_tlv *)
          pos, _bind, cmk);

 return resp;
}
