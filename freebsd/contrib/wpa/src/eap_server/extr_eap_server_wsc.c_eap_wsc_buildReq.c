
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_wsc_data {int state; int out_used; int * out_buf; int out_op_code; int wps; } ;
struct eap_sm {int dummy; } ;


 int EAP_CODE_REQUEST ;


 int MSG_DEBUG ;


 struct wpabuf* eap_wsc_build_frag_ack (int ,int ) ;
 struct wpabuf* eap_wsc_build_msg (struct eap_wsc_data*,int ) ;
 struct wpabuf* eap_wsc_build_start (struct eap_sm*,struct eap_wsc_data*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int * wps_get_msg (int ,int *) ;

__attribute__((used)) static struct wpabuf * eap_wsc_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_wsc_data *data = priv;

 switch (data->state) {
 case 129:
  return eap_wsc_build_start(sm, data, id);
 case 130:
  if (data->out_buf == ((void*)0)) {
   data->out_buf = wps_get_msg(data->wps,
          &data->out_op_code);
   if (data->out_buf == ((void*)0)) {
    wpa_printf(MSG_DEBUG, "EAP-WSC: Failed to "
        "receive message from WPS");
    return ((void*)0);
   }
   data->out_used = 0;
  }

 case 128:
  return eap_wsc_build_msg(data, id);
 case 131:
  return eap_wsc_build_frag_ack(id, EAP_CODE_REQUEST);
 default:
  wpa_printf(MSG_DEBUG, "EAP-WSC: Unexpected state %d in "
      "buildReq", data->state);
  return ((void*)0);
 }
}
