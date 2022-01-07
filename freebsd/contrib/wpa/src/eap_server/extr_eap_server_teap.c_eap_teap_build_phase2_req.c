
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct teap_tlv_hdr {int dummy; } ;
struct eap_teap_data {int phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int eap_teap_auth; } ;
struct TYPE_2__ {struct wpabuf* (* buildReq ) (struct eap_sm*,int ,int ) ;} ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TEAP_TLV_BASIC_PASSWORD_AUTH_REQ ;
 int eap_teap_put_tlv_hdr (struct wpabuf*,int ,int ) ;
 struct wpabuf* eap_teap_tlv_eap_payload (struct wpabuf*) ;
 struct wpabuf* stub1 (struct eap_sm*,int ,int ) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;

__attribute__((used)) static struct wpabuf * eap_teap_build_phase2_req(struct eap_sm *sm,
       struct eap_teap_data *data,
       u8 id)
{
 struct wpabuf *req;

 if (sm->eap_teap_auth == 1) {
  wpa_printf(MSG_DEBUG, "EAP-TEAP: Initiate Basic-Password-Auth");
  req = wpabuf_alloc(sizeof(struct teap_tlv_hdr));
  if (!req)
   return ((void*)0);
  eap_teap_put_tlv_hdr(req, TEAP_TLV_BASIC_PASSWORD_AUTH_REQ, 0);
  return req;
 }

 wpa_printf(MSG_DEBUG, "EAP-TEAP: Initiate inner EAP method");
 if (!data->phase2_priv) {
  wpa_printf(MSG_DEBUG,
      "EAP-TEAP: Phase 2 method not initialized");
  return ((void*)0);
 }

 req = data->phase2_method->buildReq(sm, data->phase2_priv, id);
 if (!req)
  return ((void*)0);

 wpa_hexdump_buf_key(MSG_MSGDUMP, "EAP-TEAP: Phase 2 EAP-Request", req);
 return eap_teap_tlv_eap_payload(req);
}
