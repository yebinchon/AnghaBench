
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pax_data {int state; } ;


 int MSG_DEBUG ;


 struct wpabuf* eap_pax_build_std_1 (struct eap_sm*,struct eap_pax_data*,int ) ;
 struct wpabuf* eap_pax_build_std_3 (struct eap_sm*,struct eap_pax_data*,int ) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static struct wpabuf * eap_pax_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_pax_data *data = priv;

 switch (data->state) {
 case 129:
  return eap_pax_build_std_1(sm, data, id);
 case 128:
  return eap_pax_build_std_3(sm, data, id);
 default:
  wpa_printf(MSG_DEBUG, "EAP-PAX: Unknown state %d in buildReq",
      data->state);
  break;
 }
 return ((void*)0);
}
