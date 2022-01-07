
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_fast_data {int * phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {struct wpabuf* (* buildReq ) (struct eap_sm*,int *,int ) ;} ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 struct wpabuf* eap_fast_tlv_eap_payload (struct wpabuf*) ;
 struct wpabuf* stub1 (struct eap_sm*,int *,int ) ;
 int wpa_hexdump_buf_key (int ,char*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_fast_build_phase2_req(struct eap_sm *sm,
       struct eap_fast_data *data,
       u8 id)
{
 struct wpabuf *req;

 if (data->phase2_priv == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Phase 2 method not "
      "initialized");
  return ((void*)0);
 }
 req = data->phase2_method->buildReq(sm, data->phase2_priv, id);
 if (req == ((void*)0))
  return ((void*)0);

 wpa_hexdump_buf_key(MSG_MSGDUMP, "EAP-FAST: Phase 2 EAP-Request", req);
 return eap_fast_tlv_eap_payload(req);
}
