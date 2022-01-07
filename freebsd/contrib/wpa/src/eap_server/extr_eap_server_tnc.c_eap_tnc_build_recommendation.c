
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_tnc_data {int recommendation; } ;
struct eap_sm {int dummy; } ;



 int DONE ;
 int FAIL ;

 int MSG_DEBUG ;


 struct wpabuf* eap_tnc_build (struct eap_sm*,struct eap_tnc_data*) ;
 int eap_tnc_set_state (struct eap_tnc_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_tnc_build_recommendation(struct eap_sm *sm,
          struct eap_tnc_data *data)
{
 switch (data->recommendation) {
 case 131:
  eap_tnc_set_state(data, DONE);
  break;
 case 130:
  eap_tnc_set_state(data, FAIL);

  break;
 case 129:
  eap_tnc_set_state(data, FAIL);
  break;
 case 128:
  eap_tnc_set_state(data, DONE);
  break;
 default:
  wpa_printf(MSG_DEBUG, "EAP-TNC: Unknown recommendation");
  return ((void*)0);
 }

 return eap_tnc_build(sm, data);
}
