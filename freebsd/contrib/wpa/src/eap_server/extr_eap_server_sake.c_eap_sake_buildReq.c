
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sake_data {int state; } ;





 int MSG_DEBUG ;
 struct wpabuf* eap_sake_build_challenge (struct eap_sm*,struct eap_sake_data*,int ) ;
 struct wpabuf* eap_sake_build_confirm (struct eap_sm*,struct eap_sake_data*,int ) ;
 struct wpabuf* eap_sake_build_identity (struct eap_sm*,struct eap_sake_data*,int ) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static struct wpabuf * eap_sake_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_sake_data *data = priv;

 switch (data->state) {
 case 128:
  return eap_sake_build_identity(sm, data, id);
 case 130:
  return eap_sake_build_challenge(sm, data, id);
 case 129:
  return eap_sake_build_confirm(sm, data, id);
 default:
  wpa_printf(MSG_DEBUG, "EAP-SAKE: Unknown state %d in buildReq",
      data->state);
  break;
 }
 return ((void*)0);
}
