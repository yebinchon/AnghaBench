
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_method_ret {int allowNotifications; int decision; int methodState; } ;
struct eap_eke_data {int sess; int dh_priv; } ;


 int DECISION_FAIL ;
 int EAP_EKE_FAILURE ;
 int FAILURE ;
 int FALSE ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 struct wpabuf* eap_eke_build_msg (struct eap_eke_data*,int ,int,int ) ;
 int eap_eke_session_clean (int *) ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 int os_memset (int ,int ,int) ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_eke_build_fail(struct eap_eke_data *data,
       struct eap_method_ret *ret,
       u8 id, u32 failure_code)
{
 struct wpabuf *resp;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Sending EAP-EKE-Failure/Response - code=0x%x",
     failure_code);

 resp = eap_eke_build_msg(data, id, 4, EAP_EKE_FAILURE);
 if (resp)
  wpabuf_put_be32(resp, failure_code);

 os_memset(data->dh_priv, 0, sizeof(data->dh_priv));
 eap_eke_session_clean(&data->sess);

 eap_eke_state(data, FAILURE);
 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = FALSE;

 return resp;
}
