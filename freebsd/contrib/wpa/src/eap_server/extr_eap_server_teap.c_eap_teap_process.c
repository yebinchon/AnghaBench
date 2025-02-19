
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_teap_data {scalar_t__ state; int ssl; struct wpabuf* peer_outer_tlvs; } ;
struct eap_sm {int dummy; } ;


 int EAP_TEAP_FLAGS_OUTER_TLV_LEN ;
 int EAP_TLS_FLAGS_LENGTH_INCLUDED ;
 int EAP_TYPE_TEAP ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ PHASE1 ;
 int PHASE1B ;
 int WPA_GET_BE16 (int const*) ;
 int WPA_GET_BE32 (int const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 scalar_t__ eap_server_tls_process (struct eap_sm*,int *,struct wpabuf*,struct eap_teap_data*,int ,int ,int ) ;
 int eap_teap_process_msg ;
 int eap_teap_process_version ;
 int eap_teap_state (struct eap_teap_data*,int ) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct wpabuf* wpabuf_alloc_copy (int const*,int) ;
 int wpabuf_free (struct wpabuf*) ;
 int* wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static void eap_teap_process(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_teap_data *data = priv;
 const u8 *pos;
 size_t len;
 struct wpabuf *resp = respData;
 u8 flags;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_TEAP, respData, &len);
 if (!pos || len < 1)
  return;

 flags = *pos++;
 len--;

 if (flags & EAP_TEAP_FLAGS_OUTER_TLV_LEN) {


  u32 message_len = 0, outer_tlv_len;
  const u8 *hdr;

  if (data->state != PHASE1) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Unexpected Outer TLVs in a message that is not the first message from the peer");
   return;
  }

  if (flags & EAP_TLS_FLAGS_LENGTH_INCLUDED) {
   if (len < 4) {
    wpa_printf(MSG_INFO,
        "EAP-TEAP: Too short message to include Message Length field");
    return;
   }

   message_len = WPA_GET_BE32(pos);
   pos += 4;
   len -= 4;
   if (message_len < 4) {
    wpa_printf(MSG_INFO,
        "EAP-TEAP: Message Length field has too msall value to include Outer TLV Length field");
    return;
   }
  }

  if (len < 4) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Too short message to include Outer TLVs Length field");
   return;
  }

  outer_tlv_len = WPA_GET_BE32(pos);
  pos += 4;
  len -= 4;

  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Message Length %u Outer TLV Length %u",
     message_len, outer_tlv_len);
  if (len < outer_tlv_len) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Too short message to include Outer TLVs field");
   return;
  }

  if (message_len &&
      (message_len < outer_tlv_len ||
       message_len < 4 + outer_tlv_len)) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Message Length field has too small value to include Outer TLVs");
   return;
  }

  if (wpabuf_len(respData) < 4 + outer_tlv_len ||
      len < outer_tlv_len)
   return;
  resp = wpabuf_alloc(wpabuf_len(respData) - 4 - outer_tlv_len);
  if (!resp)
   return;
  hdr = wpabuf_head(respData);
  wpabuf_put_u8(resp, *hdr++);
  wpabuf_put_u8(resp, *hdr++);
  wpabuf_put_be16(resp, WPA_GET_BE16(hdr) - 4 - outer_tlv_len);
  hdr += 2;
  wpabuf_put_u8(resp, *hdr++);

  wpabuf_put_u8(resp, flags & ~EAP_TEAP_FLAGS_OUTER_TLV_LEN);

  if (flags & EAP_TLS_FLAGS_LENGTH_INCLUDED)
   wpabuf_put_be32(resp, message_len - 4 - outer_tlv_len);

  wpabuf_put_data(resp, pos, len - outer_tlv_len);
  pos += len - outer_tlv_len;
  wpabuf_free(data->peer_outer_tlvs);
  data->peer_outer_tlvs = wpabuf_alloc_copy(pos, outer_tlv_len);
  if (!data->peer_outer_tlvs)
   return;
  wpa_hexdump_buf(MSG_DEBUG, "EAP-TEAP: Outer TLVs",
    data->peer_outer_tlvs);

  wpa_hexdump_buf(MSG_DEBUG,
    "EAP-TEAP: TLS Data message after Outer TLV removal",
    resp);
  pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_TEAP, resp,
           &len);
  if (!pos || len < 1) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Invalid frame after Outer TLV removal");
   return;
  }
 }

 if (data->state == PHASE1)
  eap_teap_state(data, PHASE1B);

 if (eap_server_tls_process(sm, &data->ssl, resp, data,
       EAP_TYPE_TEAP, eap_teap_process_version,
       eap_teap_process_msg) < 0)
  eap_teap_state(data, FAILURE);

 if (resp != respData)
  wpabuf_free(resp);
}
