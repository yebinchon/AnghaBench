
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;
struct eap_teap_data {int srv_id_len; int teap_version; int server_outer_tlvs; int srv_id; } ;
struct eap_sm {int dummy; } ;


 int EAP_CODE_REQUEST ;
 int EAP_TEAP_FLAGS_OUTER_TLV_LEN ;
 int EAP_TLS_FLAGS_START ;
 int EAP_TYPE_TEAP ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_ERROR ;
 int PHASE1 ;
 int TEAP_TLV_AUTHORITY_ID ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int eap_teap_put_tlv (struct wpabuf*,int ,int ,int) ;
 int eap_teap_state (struct eap_teap_data*,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_alloc_copy (int const*,int) ;
 int wpabuf_free (int ) ;
 int * wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_be32 (struct wpabuf*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_teap_build_start(struct eap_sm *sm,
         struct eap_teap_data *data, u8 id)
{
 struct wpabuf *req;
 size_t outer_tlv_len = sizeof(struct teap_tlv_hdr) + data->srv_id_len;
 const u8 *start, *end;

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_TEAP,
       1 + 4 + outer_tlv_len, EAP_CODE_REQUEST, id);
 if (!req) {
  wpa_printf(MSG_ERROR,
      "EAP-TEAP: Failed to allocate memory for request");
  eap_teap_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_TLS_FLAGS_START | EAP_TEAP_FLAGS_OUTER_TLV_LEN |
        data->teap_version);
 wpabuf_put_be32(req, outer_tlv_len);

 start = wpabuf_put(req, 0);


 eap_teap_put_tlv(req, TEAP_TLV_AUTHORITY_ID,
    data->srv_id, data->srv_id_len);

 end = wpabuf_put(req, 0);
 wpabuf_free(data->server_outer_tlvs);
 data->server_outer_tlvs = wpabuf_alloc_copy(start, end - start);
 if (!data->server_outer_tlvs) {
  eap_teap_state(data, FAILURE);
  return ((void*)0);
 }

 eap_teap_state(data, PHASE1);

 return req;
}
