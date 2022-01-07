
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_aka_data {int state; scalar_t__ auts_reported; } ;




 int MSG_DEBUG ;


 struct wpabuf* eap_aka_build_challenge (struct eap_sm*,struct eap_aka_data*,int ) ;
 struct wpabuf* eap_aka_build_identity (struct eap_sm*,struct eap_aka_data*,int ) ;
 struct wpabuf* eap_aka_build_notification (struct eap_sm*,struct eap_aka_data*,int ) ;
 struct wpabuf* eap_aka_build_reauth (struct eap_sm*,struct eap_aka_data*,int ) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static struct wpabuf * eap_aka_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_aka_data *data = priv;

 data->auts_reported = 0;
 switch (data->state) {
 case 130:
  return eap_aka_build_identity(sm, data, id);
 case 131:
  return eap_aka_build_challenge(sm, data, id);
 case 128:
  return eap_aka_build_reauth(sm, data, id);
 case 129:
  return eap_aka_build_notification(sm, data, id);
 default:
  wpa_printf(MSG_DEBUG, "EAP-AKA: Unknown state %d in "
      "buildReq", data->state);
  break;
 }
 return ((void*)0);
}
