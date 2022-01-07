
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct pac_tlv_hdr {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int fast_version; scalar_t__ srv_id_len; int srv_id; } ;


 int EAP_CODE_REQUEST ;
 int EAP_TLS_FLAGS_START ;
 int EAP_TYPE_FAST ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_ERROR ;
 int PAC_TYPE_A_ID ;
 int PHASE1 ;
 int eap_fast_put_tlv (struct wpabuf*,int ,int ,scalar_t__) ;
 int eap_fast_state (struct eap_fast_data*,int ) ;
 struct wpabuf* eap_msg_alloc (int ,int ,scalar_t__,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_fast_build_start(struct eap_sm *sm,
         struct eap_fast_data *data, u8 id)
{
 struct wpabuf *req;

 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_FAST,
       1 + sizeof(struct pac_tlv_hdr) + data->srv_id_len,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-FAST: Failed to allocate memory for"
      " request");
  eap_fast_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, EAP_TLS_FLAGS_START | data->fast_version);


 eap_fast_put_tlv(req, PAC_TYPE_A_ID, data->srv_id, data->srv_id_len);

 eap_fast_state(data, PHASE1);

 return req;
}
