
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_mschapv2_data {int state; } ;
struct TYPE_2__ {int * password; } ;



 int FAILURE ;

 int MSG_DEBUG ;
 int MSG_INFO ;

 int eap_mschapv2_process_failure_resp (struct eap_sm*,struct eap_mschapv2_data*,struct wpabuf*) ;
 int eap_mschapv2_process_response (struct eap_sm*,struct eap_mschapv2_data*,struct wpabuf*) ;
 int eap_mschapv2_process_success_resp (struct eap_sm*,struct eap_mschapv2_data*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_mschapv2_process(struct eap_sm *sm, void *priv,
     struct wpabuf *respData)
{
 struct eap_mschapv2_data *data = priv;

 if (sm->user == ((void*)0) || sm->user->password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Password not configured");
  data->state = FAILURE;
  return;
 }

 switch (data->state) {
 case 130:
  eap_mschapv2_process_response(sm, data, respData);
  break;
 case 128:
  eap_mschapv2_process_success_resp(sm, data, respData);
  break;
 case 129:
  eap_mschapv2_process_failure_resp(sm, data, respData);
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Unknown state %d in "
      "process", data->state);
  break;
 }
}
