
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {int dummy; } ;




 int EAP_TYPE_GPSK ;
 int EAP_VENDOR_IETF ;
 int eap_gpsk_process_gpsk_2 (struct eap_sm*,struct eap_gpsk_data*,int const*,size_t) ;
 int eap_gpsk_process_gpsk_4 (struct eap_sm*,struct eap_gpsk_data*,int const*,size_t) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;

__attribute__((used)) static void eap_gpsk_process(struct eap_sm *sm, void *priv,
        struct wpabuf *respData)
{
 struct eap_gpsk_data *data = priv;
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_GPSK, respData, &len);
 if (pos == ((void*)0) || len < 1)
  return;

 switch (*pos) {
 case 129:
  eap_gpsk_process_gpsk_2(sm, data, pos + 1, len - 1);
  break;
 case 128:
  eap_gpsk_process_gpsk_4(sm, data, pos + 1, len - 1);
  break;
 }
}
