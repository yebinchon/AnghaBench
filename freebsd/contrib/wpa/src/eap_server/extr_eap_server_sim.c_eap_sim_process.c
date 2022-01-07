
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {int state; void* notification; } ;
struct eap_sim_attrs {int dummy; } ;



 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 scalar_t__ EAP_SIM_SUBTYPE_CLIENT_ERROR ;
 int EAP_TYPE_SIM ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;



 scalar_t__* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 scalar_t__ eap_sim_parse_attr (scalar_t__ const*,scalar_t__ const*,struct eap_sim_attrs*,int ,int ) ;
 int eap_sim_process_challenge (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_sim_process_client_error (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_sim_process_notification (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_sim_process_reauth (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_sim_process_start (struct eap_sm*,struct eap_sim_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_sim_state (struct eap_sim_data*,int) ;
 scalar_t__ eap_sim_unexpected_subtype (struct eap_sim_data*,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_sim_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_sim_data *data = priv;
 const u8 *pos, *end;
 u8 subtype;
 size_t len;
 struct eap_sim_attrs attr;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_SIM, respData, &len);
 if (pos == ((void*)0) || len < 3)
  return;

 end = pos + len;
 subtype = *pos;
 pos += 3;

 if (eap_sim_unexpected_subtype(data, subtype)) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Unrecognized or unexpected "
      "EAP-SIM Subtype in EAP Response");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_sim_state(data, 130);
  return;
 }

 if (eap_sim_parse_attr(pos, end, &attr, 0, 0)) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: Failed to parse attributes");
  if (subtype != EAP_SIM_SUBTYPE_CLIENT_ERROR &&
      (data->state == 128 || data->state == 131 ||
       data->state == 129)) {
   data->notification =
    EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
   eap_sim_state(data, 130);
   return;
  }
  eap_sim_state(data, FAILURE);
  return;
 }

 if (subtype == EAP_SIM_SUBTYPE_CLIENT_ERROR) {
  eap_sim_process_client_error(sm, data, respData, &attr);
  return;
 }

 switch (data->state) {
 case 128:
  eap_sim_process_start(sm, data, respData, &attr);
  break;
 case 131:
  eap_sim_process_challenge(sm, data, respData, &attr);
  break;
 case 129:
  eap_sim_process_reauth(sm, data, respData, &attr);
  break;
 case 130:
  eap_sim_process_notification(sm, data, respData, &attr);
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-SIM: Unknown state %d in "
      "process", data->state);
  break;
 }
}
