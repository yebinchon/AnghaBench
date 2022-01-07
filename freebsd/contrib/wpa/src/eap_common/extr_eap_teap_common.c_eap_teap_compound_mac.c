
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;
struct teap_tlv_crypto_binding {int msk_compound_mac; int emsk_compound_mac; int length; } ;


 int EAP_TEAP_CMK_LEN ;
 int EAP_TEAP_COMPOUND_MAC_LEN ;
 int EAP_TYPE_TEAP ;
 int MSG_MSGDUMP ;
 int be_to_host16 (int ) ;
 int eap_teap_tls_mac (int ,int const*,int ,int *,size_t,int *,int ) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,struct teap_tlv_crypto_binding const*,size_t) ;
 int os_memset (int ,int ,int ) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_hexdump_key (int ,char*,int const*,int ) ;
 struct teap_tlv_crypto_binding const* wpabuf_head (struct wpabuf const*) ;
 size_t wpabuf_len (struct wpabuf const*) ;

int eap_teap_compound_mac(u16 tls_cs, const struct teap_tlv_crypto_binding *cb,
     const struct wpabuf *server_outer_tlvs,
     const struct wpabuf *peer_outer_tlvs,
     const u8 *cmk, u8 *compound_mac)
{
 u8 *pos, *buffer;
 size_t bind_len, buffer_len;
 struct teap_tlv_crypto_binding *tmp_cb;
 int res;


 bind_len = sizeof(struct teap_tlv_hdr) + be_to_host16(cb->length);
 buffer_len = bind_len + 1;
 if (server_outer_tlvs)
  buffer_len += wpabuf_len(server_outer_tlvs);
 if (peer_outer_tlvs)
  buffer_len += wpabuf_len(peer_outer_tlvs);
 buffer = os_malloc(buffer_len);
 if (!buffer)
  return -1;

 pos = buffer;


 os_memcpy(pos, cb, bind_len);
 pos += bind_len;
 tmp_cb = (struct teap_tlv_crypto_binding *) buffer;
 os_memset(tmp_cb->emsk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);
 os_memset(tmp_cb->msk_compound_mac, 0, EAP_TEAP_COMPOUND_MAC_LEN);






 *pos++ = EAP_TYPE_TEAP;



 if (server_outer_tlvs) {
  os_memcpy(pos, wpabuf_head(server_outer_tlvs),
     wpabuf_len(server_outer_tlvs));
  pos += wpabuf_len(server_outer_tlvs);
 }



 if (peer_outer_tlvs) {
  os_memcpy(pos, wpabuf_head(peer_outer_tlvs),
     wpabuf_len(peer_outer_tlvs));
  pos += wpabuf_len(peer_outer_tlvs);
 }

 buffer_len = pos - buffer;

 wpa_hexdump_key(MSG_MSGDUMP,
   "EAP-TEAP: CMK for Compound MAC calculation",
   cmk, EAP_TEAP_CMK_LEN);
 wpa_hexdump(MSG_MSGDUMP,
      "EAP-TEAP: BUFFER for Compound MAC calculation",
      buffer, buffer_len);
 res = eap_teap_tls_mac(tls_cs, cmk, EAP_TEAP_CMK_LEN,
          buffer, buffer_len,
          compound_mac, EAP_TEAP_COMPOUND_MAC_LEN);
 os_free(buffer);

 return res;
}
