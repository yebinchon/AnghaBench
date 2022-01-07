
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_eke_data {int dummy; } ;






 int EAP_TYPE_EKE ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int eap_eke_process_commit (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ;
 int eap_eke_process_confirm (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ;
 int eap_eke_process_failure (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ;
 int eap_eke_process_identity (struct eap_sm*,struct eap_eke_data*,struct wpabuf*,int const*,int) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_hexdump (int ,char*,int const*,int) ;

__attribute__((used)) static void eap_eke_process(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_eke_data *data = priv;
 u8 eke_exch;
 size_t len;
 const u8 *pos, *end;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_EKE, respData, &len);
 if (pos == ((void*)0) || len < 1)
  return;

 eke_exch = *pos;
 end = pos + len;
 pos++;

 wpa_hexdump(MSG_DEBUG, "EAP-EKE: Received payload", pos, end - pos);

 switch (eke_exch) {
 case 128:
  eap_eke_process_identity(sm, data, respData, pos, end - pos);
  break;
 case 131:
  eap_eke_process_commit(sm, data, respData, pos, end - pos);
  break;
 case 130:
  eap_eke_process_confirm(sm, data, respData, pos, end - pos);
  break;
 case 129:
  eap_eke_process_failure(sm, data, respData, pos, end - pos);
  break;
 }
}
