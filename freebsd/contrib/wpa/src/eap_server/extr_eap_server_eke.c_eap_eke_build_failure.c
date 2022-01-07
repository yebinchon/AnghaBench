
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_eke_data {int failure_code; } ;


 int EAP_EKE_FAILURE ;
 int FAILURE ;
 int MSG_DEBUG ;
 struct wpabuf* eap_eke_build_msg (struct eap_eke_data*,int ,int,int ) ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_eke_build_failure(struct eap_eke_data *data, u8 id)
{
 struct wpabuf *msg;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Request/Failure: Failure-Code=0x%x",
     data->failure_code);

 msg = eap_eke_build_msg(data, id, 4, EAP_EKE_FAILURE);
 if (msg == ((void*)0)) {
  eap_eke_state(data, FAILURE);
  return ((void*)0);
 }
 wpabuf_put_be32(msg, data->failure_code);

 return msg;
}
