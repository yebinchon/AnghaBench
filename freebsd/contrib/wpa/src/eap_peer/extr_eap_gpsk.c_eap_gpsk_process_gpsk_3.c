
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; int methodState; int ignore; } ;
struct eap_gpsk_data {scalar_t__ state; } ;


 int DECISION_UNCOND_SUCC ;
 int FAILURE ;
 scalar_t__ GPSK_3 ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int SUCCESS ;
 int TRUE ;
 struct wpabuf* eap_gpsk_send_gpsk_4 (struct eap_gpsk_data*,int ) ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 int * eap_gpsk_validate_csuite (struct eap_gpsk_data*,int const*,int const*) ;
 int * eap_gpsk_validate_gpsk_3_mic (struct eap_gpsk_data*,int const*,int const*,int const*) ;
 int * eap_gpsk_validate_id_server (struct eap_gpsk_data*,int const*,int const*) ;
 int * eap_gpsk_validate_pd_payload_2 (struct eap_gpsk_data*,int const*,int const*) ;
 int * eap_gpsk_validate_rand (struct eap_gpsk_data*,int const*,int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_process_gpsk_3(struct eap_sm *sm,
            struct eap_gpsk_data *data,
            struct eap_method_ret *ret,
            u8 identifier,
            const u8 *payload,
            size_t payload_len)
{
 struct wpabuf *resp;
 const u8 *pos, *end;

 if (data->state != GPSK_3) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Received Request/GPSK-3");

 end = payload + payload_len;

 pos = eap_gpsk_validate_rand(data, payload, end);
 pos = eap_gpsk_validate_id_server(data, pos, end);
 pos = eap_gpsk_validate_csuite(data, pos, end);
 pos = eap_gpsk_validate_pd_payload_2(data, pos, end);
 pos = eap_gpsk_validate_gpsk_3_mic(data, payload, pos, end);

 if (pos == ((void*)0)) {
  eap_gpsk_state(data, FAILURE);
  return ((void*)0);
 }
 if (pos != end) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Ignored %lu bytes of extra "
      "data in the end of GPSK-2",
      (unsigned long) (end - pos));
 }

 resp = eap_gpsk_send_gpsk_4(data, identifier);
 if (resp == ((void*)0))
  return ((void*)0);

 eap_gpsk_state(data, SUCCESS);
 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_UNCOND_SUCC;

 return resp;
}
