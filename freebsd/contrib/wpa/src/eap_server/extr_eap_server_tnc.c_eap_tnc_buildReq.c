
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {int state; int out_used; int * out_buf; int tncs; } ;
struct eap_sm {int dummy; } ;




 int EAP_CODE_REQUEST ;


 int MSG_DEBUG ;



 int * eap_tnc_build (struct eap_sm*,struct eap_tnc_data*) ;
 struct wpabuf* eap_tnc_build_frag_ack (int ,int ) ;
 struct wpabuf* eap_tnc_build_msg (struct eap_tnc_data*,int ) ;
 int * eap_tnc_build_recommendation (struct eap_sm*,struct eap_tnc_data*) ;
 struct wpabuf* eap_tnc_build_start (struct eap_sm*,struct eap_tnc_data*,int ) ;
 int tncs_init_connection (int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_tnc_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_tnc_data *data = priv;

 switch (data->state) {
 case 129:
  tncs_init_connection(data->tncs);
  return eap_tnc_build_start(sm, data, id);
 case 134:
  if (data->out_buf == ((void*)0)) {
   data->out_buf = eap_tnc_build(sm, data);
   if (data->out_buf == ((void*)0)) {
    wpa_printf(MSG_DEBUG, "EAP-TNC: Failed to "
        "generate message");
    return ((void*)0);
   }
   data->out_used = 0;
  }
  return eap_tnc_build_msg(data, id);
 case 130:
  if (data->out_buf == ((void*)0)) {
   data->out_buf = eap_tnc_build_recommendation(sm, data);
   if (data->out_buf == ((void*)0)) {
    wpa_printf(MSG_DEBUG, "EAP-TNC: Failed to "
        "generate recommendation message");
    return ((void*)0);
   }
   data->out_used = 0;
  }
  return eap_tnc_build_msg(data, id);
 case 128:
  return eap_tnc_build_msg(data, id);
 case 131:
  return eap_tnc_build_frag_ack(id, EAP_CODE_REQUEST);
 case 133:
 case 132:
  return ((void*)0);
 }

 return ((void*)0);
}
