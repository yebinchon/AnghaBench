
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int methodState; int ignore; } ;
struct eap_gpsk_data {scalar_t__ state; } ;


 int FAILURE ;
 scalar_t__ GPSK_1 ;
 int GPSK_3 ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int TRUE ;
 int * eap_gpsk_process_csuite_list (struct eap_sm*,struct eap_gpsk_data*,int const**,size_t*,int const*,int const*) ;
 int * eap_gpsk_process_id_server (struct eap_gpsk_data*,int const*,int const*) ;
 int * eap_gpsk_process_rand_server (struct eap_gpsk_data*,int const*,int const*) ;
 struct wpabuf* eap_gpsk_send_gpsk_2 (struct eap_gpsk_data*,int ,int const*,size_t) ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_gpsk_process_gpsk_1(struct eap_sm *sm,
            struct eap_gpsk_data *data,
            struct eap_method_ret *ret,
            u8 identifier,
            const u8 *payload,
            size_t payload_len)
{
 size_t csuite_list_len;
 const u8 *csuite_list, *pos, *end;
 struct wpabuf *resp;

 if (data->state != GPSK_1) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Received Request/GPSK-1");

 end = payload + payload_len;

 pos = eap_gpsk_process_id_server(data, payload, end);
 pos = eap_gpsk_process_rand_server(data, pos, end);
 pos = eap_gpsk_process_csuite_list(sm, data, &csuite_list,
        &csuite_list_len, pos, end);
 if (pos == ((void*)0)) {
  ret->methodState = METHOD_DONE;
  eap_gpsk_state(data, FAILURE);
  return ((void*)0);
 }

 resp = eap_gpsk_send_gpsk_2(data, identifier,
        csuite_list, csuite_list_len);
 if (resp == ((void*)0))
  return ((void*)0);

 eap_gpsk_state(data, GPSK_3);

 return resp;
}
