
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef long u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int init_phase2; } ;
struct eap_peer_config {scalar_t__ pending_req_sim; scalar_t__ pending_req_new_password; scalar_t__ pending_req_otp; scalar_t__ pending_req_password; scalar_t__ pending_req_identity; } ;
struct TYPE_4__ {long method; int vendor; } ;
struct eap_peap_data {int phase2_eap_started; int phase2_eap_success; int phase2_success; size_t num_phase2_types; struct wpabuf* pending_phase2_req; int * phase2_priv; TYPE_3__* phase2_method; TYPE_1__ phase2_type; TYPE_2__* phase2_types; int soh; } ;
struct eap_method_ret {void* methodState; void* decision; } ;
struct eap_hdr {int identifier; int length; } ;
typedef int iret ;
struct TYPE_6__ {struct wpabuf* (* process ) (struct eap_sm*,int *,struct eap_method_ret*,struct wpabuf*) ;int * (* init ) (struct eap_sm*) ;} ;
struct TYPE_5__ {long method; int vendor; } ;


 void* DECISION_COND_SUCC ;
 void* DECISION_FAIL ;
 void* DECISION_UNCOND_SUCC ;
 int EAP_CODE_RESPONSE ;


 long EAP_TYPE_NONE ;

 int EAP_VENDOR_IETF ;
 int EAP_VENDOR_MICROSOFT ;
 void* METHOD_DONE ;
 void* METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 size_t be_to_host16 (int ) ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 long* eap_hdr_validate (int ,int,struct wpabuf*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int,int ,int ,int ) ;
 TYPE_3__* eap_peer_get_eap_method (int ,long) ;
 int eap_peer_tls_phase2_nak (TYPE_2__*,size_t,struct eap_hdr*,struct wpabuf**) ;
 struct wpabuf* eap_sm_buildIdentity (struct eap_sm*,int ,int) ;
 int eap_tlv_process (struct eap_sm*,struct eap_peap_data*,struct eap_method_ret*,struct wpabuf*,struct wpabuf**,int) ;
 int os_memset (struct eap_method_ret*,int ,int) ;
 int * stub1 (struct eap_sm*) ;
 struct wpabuf* stub2 (struct eap_sm*,int *,struct eap_method_ret*,struct wpabuf*) ;
 struct wpabuf* tncc_process_soh_request (int ,long const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc_copy (struct eap_hdr*,size_t) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 struct eap_hdr* wpabuf_mhead (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

__attribute__((used)) static int eap_peap_phase2_request(struct eap_sm *sm,
       struct eap_peap_data *data,
       struct eap_method_ret *ret,
       struct wpabuf *req,
       struct wpabuf **resp)
{
 struct eap_hdr *hdr = wpabuf_mhead(req);
 size_t len = be_to_host16(hdr->length);
 u8 *pos;
 struct eap_method_ret iret;
 struct eap_peer_config *config = eap_get_config(sm);

 if (len <= sizeof(struct eap_hdr)) {
  wpa_printf(MSG_INFO, "EAP-PEAP: too short "
      "Phase 2 request (len=%lu)", (unsigned long) len);
  return -1;
 }
 pos = (u8 *) (hdr + 1);
 wpa_printf(MSG_DEBUG, "EAP-PEAP: Phase 2 Request: type=%d", *pos);
 switch (*pos) {
 case 129:
  *resp = eap_sm_buildIdentity(sm, hdr->identifier, 1);
  break;
 case 128:
  os_memset(&iret, 0, sizeof(iret));
  if (eap_tlv_process(sm, data, &iret, req, resp,
        data->phase2_eap_started &&
        !data->phase2_eap_success)) {
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_FAIL;
   return -1;
  }
  if (iret.methodState == METHOD_DONE ||
      iret.methodState == METHOD_MAY_CONT) {
   ret->methodState = iret.methodState;
   ret->decision = iret.decision;
   data->phase2_success = 1;
  }
  break;
 case 130:
 default:
  if (data->phase2_type.vendor == EAP_VENDOR_IETF &&
      data->phase2_type.method == EAP_TYPE_NONE) {
   size_t i;
   for (i = 0; i < data->num_phase2_types; i++) {
    if (data->phase2_types[i].vendor !=
        EAP_VENDOR_IETF ||
        data->phase2_types[i].method != *pos)
     continue;

    data->phase2_type.vendor =
     data->phase2_types[i].vendor;
    data->phase2_type.method =
     data->phase2_types[i].method;
    wpa_printf(MSG_DEBUG, "EAP-PEAP: Selected "
        "Phase 2 EAP vendor %d method %d",
        data->phase2_type.vendor,
        data->phase2_type.method);
    break;
   }
  }
  if (*pos != data->phase2_type.method ||
      *pos == EAP_TYPE_NONE) {
   if (eap_peer_tls_phase2_nak(data->phase2_types,
          data->num_phase2_types,
          hdr, resp))
    return -1;
   return 0;
  }

  if (data->phase2_priv == ((void*)0)) {
   data->phase2_method = eap_peer_get_eap_method(
    data->phase2_type.vendor,
    data->phase2_type.method);
   if (data->phase2_method) {
    sm->init_phase2 = 1;
    data->phase2_priv =
     data->phase2_method->init(sm);
    sm->init_phase2 = 0;
   }
  }
  if (data->phase2_priv == ((void*)0) || data->phase2_method == ((void*)0)) {
   wpa_printf(MSG_INFO, "EAP-PEAP: failed to initialize "
       "Phase 2 EAP method %d", *pos);
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_FAIL;
   return -1;
  }
  data->phase2_eap_started = 1;
  os_memset(&iret, 0, sizeof(iret));
  *resp = data->phase2_method->process(sm, data->phase2_priv,
           &iret, req);
  if ((iret.methodState == METHOD_DONE ||
       iret.methodState == METHOD_MAY_CONT) &&
      (iret.decision == DECISION_UNCOND_SUCC ||
       iret.decision == DECISION_COND_SUCC)) {
   data->phase2_eap_success = 1;
   data->phase2_success = 1;
  }
  break;
 }

 if (*resp == ((void*)0) &&
     (config->pending_req_identity || config->pending_req_password ||
      config->pending_req_otp || config->pending_req_new_password ||
      config->pending_req_sim)) {
  wpabuf_clear_free(data->pending_phase2_req);
  data->pending_phase2_req = wpabuf_alloc_copy(hdr, len);
 }

 return 0;
}
