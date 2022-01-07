
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_1__* user; } ;
struct eap_psk_data {int state; } ;
struct TYPE_2__ {int * password; } ;


 int EAP_PSK_FLAGS_GET_T (int const) ;
 int EAP_TYPE_PSK ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_INFO ;
 int * eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int eap_psk_process_2 (struct eap_sm*,struct eap_psk_data*,struct wpabuf*) ;
 int eap_psk_process_4 (struct eap_sm*,struct eap_psk_data*,struct wpabuf*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_psk_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_psk_data *data = priv;
 const u8 *pos;
 size_t len;

 if (sm->user == ((void*)0) || sm->user->password == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-PSK: Plaintext password not "
      "configured");
  data->state = FAILURE;
  return;
 }

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PSK, respData, &len);
 if (pos == ((void*)0) || len < 1)
  return;

 switch (EAP_PSK_FLAGS_GET_T(*pos)) {
 case 1:
  eap_psk_process_2(sm, data, respData);
  break;
 case 3:
  eap_psk_process_4(sm, data, respData);
  break;
 }
}
