
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_ttls_data {int phase2_type; scalar_t__ tnc_started; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; } ;
struct eap_hdr {int dummy; } ;
typedef enum phase2_types { ____Placeholder_phase2_types } phase2_types ;


 int DECISION_FAIL ;





 int METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 int * eap_get_config_password (struct eap_sm*,size_t*) ;
 int eap_sm_request_identity (struct eap_sm*) ;
 int eap_sm_request_password (struct eap_sm*) ;
 int eap_ttls_phase2_request_chap (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ;
 int eap_ttls_phase2_request_eap (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,struct wpabuf**) ;
 int eap_ttls_phase2_request_mschap (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ;
 int eap_ttls_phase2_request_mschapv2 (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ;
 int eap_ttls_phase2_request_pap (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct wpabuf**) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int eap_ttls_phase2_request(struct eap_sm *sm,
       struct eap_ttls_data *data,
       struct eap_method_ret *ret,
       struct eap_hdr *hdr,
       struct wpabuf **resp)
{
 int res = 0;
 size_t len;
 enum phase2_types phase2_type = data->phase2_type;
 if (phase2_type == 129 ||
     phase2_type == 130 ||
     phase2_type == 128 ||
     phase2_type == 132) {
  if (eap_get_config_identity(sm, &len) == ((void*)0)) {
   wpa_printf(MSG_INFO,
       "EAP-TTLS: Identity not configured");
   eap_sm_request_identity(sm);
   if (eap_get_config_password(sm, &len) == ((void*)0))
    eap_sm_request_password(sm);
   return 0;
  }

  if (eap_get_config_password(sm, &len) == ((void*)0)) {
   wpa_printf(MSG_INFO,
       "EAP-TTLS: Password not configured");
   eap_sm_request_password(sm);
   return 0;
  }
 }

 switch (phase2_type) {
 case 131:
  res = eap_ttls_phase2_request_eap(sm, data, ret, hdr, resp);
  break;
 case 129:
  res = eap_ttls_phase2_request_mschapv2(sm, data, ret, resp);
  break;
 case 130:
  res = eap_ttls_phase2_request_mschap(sm, data, ret, resp);
  break;
 case 128:
  res = eap_ttls_phase2_request_pap(sm, data, ret, resp);
  break;
 case 132:
  res = eap_ttls_phase2_request_chap(sm, data, ret, resp);
  break;
 default:
  wpa_printf(MSG_ERROR, "EAP-TTLS: Phase 2 - Unknown");
  res = -1;
  break;
 }

 if (res < 0) {
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
 }

 return res;
}
