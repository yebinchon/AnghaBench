
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ state; scalar_t__ use_result_ind; } ;
struct eap_sim_attrs {int dummy; } ;
struct eap_method_ret {scalar_t__ methodState; void* allowNotifications; void* decision; void* ignore; } ;
struct eap_hdr {int identifier; int length; } ;


 void* DECISION_COND_SUCC ;
 void* DECISION_FAIL ;
 void* DECISION_UNCOND_SUCC ;





 int EAP_SIM_UNABLE_TO_PROCESS_PACKET ;
 int EAP_TYPE_SIM ;
 int EAP_VENDOR_IETF ;
 scalar_t__ FAILURE ;
 void* FALSE ;
 scalar_t__ METHOD_CONT ;
 scalar_t__ METHOD_DONE ;
 scalar_t__ METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ RESULT_SUCCESS ;
 scalar_t__ SUCCESS ;
 void* TRUE ;
 size_t be_to_host16 (int ) ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_sim_client_error (struct eap_sim_data*,int,int ) ;
 scalar_t__ eap_sim_parse_attr (int const*,scalar_t__,struct eap_sim_attrs*,int ,int ) ;
 struct wpabuf* eap_sim_process_challenge (struct eap_sm*,struct eap_sim_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ;
 struct wpabuf* eap_sim_process_notification (struct eap_sm*,struct eap_sim_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ;
 struct wpabuf* eap_sim_process_reauthentication (struct eap_sm*,struct eap_sim_data*,int,struct wpabuf const*,struct eap_sim_attrs*) ;
 struct wpabuf* eap_sim_process_start (struct eap_sm*,struct eap_sim_data*,int,struct eap_sim_attrs*) ;
 int eap_sm_request_identity (struct eap_sm*) ;
 int wpa_hexdump_buf (int ,char*,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 struct eap_hdr* wpabuf_head (struct wpabuf const*) ;
 scalar_t__ wpabuf_head_u8 (struct wpabuf const*) ;

__attribute__((used)) static struct wpabuf * eap_sim_process(struct eap_sm *sm, void *priv,
           struct eap_method_ret *ret,
           const struct wpabuf *reqData)
{
 struct eap_sim_data *data = priv;
 const struct eap_hdr *req;
 u8 subtype, id;
 struct wpabuf *res;
 const u8 *pos;
 struct eap_sim_attrs attr;
 size_t len;

 wpa_hexdump_buf(MSG_DEBUG, "EAP-SIM: EAP data", reqData);
 if (eap_get_config_identity(sm, &len) == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-SIM: Identity not configured");
  eap_sm_request_identity(sm);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_SIM, reqData, &len);
 if (pos == ((void*)0) || len < 3) {
  ret->ignore = TRUE;
  return ((void*)0);
 }
 req = wpabuf_head(reqData);
 id = req->identifier;
 len = be_to_host16(req->length);

 ret->ignore = FALSE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = TRUE;

 subtype = *pos++;
 wpa_printf(MSG_DEBUG, "EAP-SIM: Subtype=%d", subtype);
 pos += 2;

 if (eap_sim_parse_attr(pos, wpabuf_head_u8(reqData) + len, &attr, 0,
          0)) {
  res = eap_sim_client_error(data, id,
        EAP_SIM_UNABLE_TO_PROCESS_PACKET);
  goto done;
 }

 switch (subtype) {
 case 128:
  res = eap_sim_process_start(sm, data, id, &attr);
  break;
 case 132:
  res = eap_sim_process_challenge(sm, data, id, reqData, &attr);
  break;
 case 130:
  res = eap_sim_process_notification(sm, data, id, reqData,
         &attr);
  break;
 case 129:
  res = eap_sim_process_reauthentication(sm, data, id, reqData,
             &attr);
  break;
 case 131:
  wpa_printf(MSG_DEBUG, "EAP-SIM: subtype Client-Error");
  res = eap_sim_client_error(data, id,
        EAP_SIM_UNABLE_TO_PROCESS_PACKET);
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-SIM: Unknown subtype=%d", subtype);
  res = eap_sim_client_error(data, id,
        EAP_SIM_UNABLE_TO_PROCESS_PACKET);
  break;
 }

done:
 if (data->state == FAILURE) {
  ret->decision = DECISION_FAIL;
  ret->methodState = METHOD_DONE;
 } else if (data->state == SUCCESS) {
  ret->decision = data->use_result_ind ?
   DECISION_UNCOND_SUCC : DECISION_COND_SUCC;
  ret->methodState = data->use_result_ind ?
   METHOD_DONE : METHOD_MAY_CONT;
 } else if (data->state == RESULT_SUCCESS)
  ret->methodState = METHOD_CONT;

 if (ret->methodState == METHOD_DONE) {
  ret->allowNotifications = FALSE;
 }

 return res;
}
