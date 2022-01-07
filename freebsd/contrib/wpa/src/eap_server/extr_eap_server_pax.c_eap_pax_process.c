
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_pax_hdr {int op_code; } ;
struct eap_pax_data {int state; } ;
struct TYPE_2__ {int * password; } ;




 int EAP_TYPE_PAX ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_INFO ;
 int * eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int eap_pax_process_ack (struct eap_sm*,struct eap_pax_data*,struct wpabuf*) ;
 int eap_pax_process_std_2 (struct eap_sm*,struct eap_pax_data*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_pax_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_pax_data *data = priv;
 struct eap_pax_hdr *resp;
 const u8 *pos;
 size_t len;

 if (sm->user == ((void*)0) || sm->user->password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-PAX: Plaintext password not "
      "configured");
  data->state = FAILURE;
  return;
 }

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PAX, respData, &len);
 if (pos == ((void*)0) || len < sizeof(*resp))
  return;

 resp = (struct eap_pax_hdr *) pos;

 switch (resp->op_code) {
 case 128:
  eap_pax_process_std_2(sm, data, respData);
  break;
 case 129:
  eap_pax_process_ack(sm, data, respData);
  break;
 }
}
