
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_attrs {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int state; void* notification; } ;



 scalar_t__ EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT ;
 scalar_t__ EAP_AKA_SUBTYPE_CLIENT_ERROR ;
 scalar_t__ EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE ;
 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int EAP_VENDOR_IETF ;

 int MSG_DEBUG ;


 int eap_aka_process_authentication_reject (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_process_challenge (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_process_client_error (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_process_identity (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_process_notification (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_process_reauth (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_process_sync_failure (struct eap_sm*,struct eap_aka_data*,struct wpabuf*,struct eap_sim_attrs*) ;
 int eap_aka_state (struct eap_aka_data*,int) ;
 scalar_t__ eap_aka_subtype_ok (struct eap_aka_data*,scalar_t__) ;
 scalar_t__* eap_hdr_validate (int ,scalar_t__,struct wpabuf*,size_t*) ;
 scalar_t__ eap_sim_parse_attr (scalar_t__ const*,scalar_t__ const*,struct eap_sim_attrs*,int,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_aka_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_aka_data *data = priv;
 const u8 *pos, *end;
 u8 subtype;
 size_t len;
 struct eap_sim_attrs attr;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, data->eap_method, respData,
          &len);
 if (pos == ((void*)0) || len < 3)
  return;

 end = pos + len;
 subtype = *pos;
 pos += 3;

 if (eap_aka_subtype_ok(data, subtype)) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Unrecognized or unexpected "
      "EAP-AKA Subtype in EAP Response");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, 129);
  return;
 }

 if (eap_sim_parse_attr(pos, end, &attr,
          data->eap_method == EAP_TYPE_AKA_PRIME ? 2 : 1,
          0)) {
  wpa_printf(MSG_DEBUG, "EAP-AKA: Failed to parse attributes");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, 129);
  return;
 }

 if (subtype == EAP_AKA_SUBTYPE_CLIENT_ERROR) {
  eap_aka_process_client_error(sm, data, respData, &attr);
  return;
 }

 if (subtype == EAP_AKA_SUBTYPE_AUTHENTICATION_REJECT) {
  eap_aka_process_authentication_reject(sm, data, respData,
            &attr);
  return;
 }

 switch (data->state) {
 case 130:
  eap_aka_process_identity(sm, data, respData, &attr);
  break;
 case 131:
  if (subtype == EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE) {
   eap_aka_process_sync_failure(sm, data, respData,
           &attr);
  } else {
   eap_aka_process_challenge(sm, data, respData, &attr);
  }
  break;
 case 128:
  eap_aka_process_reauth(sm, data, respData, &attr);
  break;
 case 129:
  eap_aka_process_notification(sm, data, respData, &attr);
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-AKA: Unknown state %d in "
      "process", data->state);
  break;
 }
}
