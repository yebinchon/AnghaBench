
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sake_hdr {int subtype; } ;
struct eap_sake_data {int dummy; } ;






 int EAP_TYPE_SAKE ;
 int EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int eap_sake_process_auth_reject (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ;
 int eap_sake_process_challenge (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ;
 int eap_sake_process_confirm (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ;
 int eap_sake_process_identity (struct eap_sm*,struct eap_sake_data*,struct wpabuf*,int const*,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;

__attribute__((used)) static void eap_sake_process(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_sake_data *data = priv;
 struct eap_sake_hdr *resp;
 u8 subtype;
 size_t len;
 const u8 *pos, *end;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_SAKE, respData, &len);
 if (pos == ((void*)0) || len < sizeof(struct eap_sake_hdr))
  return;

 resp = (struct eap_sake_hdr *) pos;
 end = pos + len;
 subtype = resp->subtype;
 pos = (u8 *) (resp + 1);

 wpa_hexdump(MSG_DEBUG, "EAP-SAKE: Received attributes",
      pos, end - pos);

 switch (subtype) {
 case 128:
  eap_sake_process_identity(sm, data, respData, pos, end - pos);
  break;
 case 130:
  eap_sake_process_challenge(sm, data, respData, pos, end - pos);
  break;
 case 129:
  eap_sake_process_confirm(sm, data, respData, pos, end - pos);
  break;
 case 131:
  eap_sake_process_auth_reject(sm, data, respData, pos,
          end - pos);
  break;
 }
}
