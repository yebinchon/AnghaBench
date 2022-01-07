
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_ikev2_data {int state; int out_used; int * out_buf; int ikev2; } ;


 int EAP_CODE_REQUEST ;


 int MSG_DEBUG ;

 struct wpabuf* eap_ikev2_build_frag_ack (int ,int ) ;
 struct wpabuf* eap_ikev2_build_msg (struct eap_ikev2_data*,int ) ;
 int * ikev2_initiator_build (int *) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_ikev2_buildReq(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_ikev2_data *data = priv;

 switch (data->state) {
 case 129:
  if (data->out_buf == ((void*)0)) {
   data->out_buf = ikev2_initiator_build(&data->ikev2);
   if (data->out_buf == ((void*)0)) {
    wpa_printf(MSG_DEBUG, "EAP-IKEV2: Failed to "
        "generate IKEv2 message");
    return ((void*)0);
   }
   data->out_used = 0;
  }

 case 128:
  return eap_ikev2_build_msg(data, id);
 case 130:
  return eap_ikev2_build_frag_ack(id, EAP_CODE_REQUEST);
 default:
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Unexpected state %d in "
      "buildReq", data->state);
  return ((void*)0);
 }
}
