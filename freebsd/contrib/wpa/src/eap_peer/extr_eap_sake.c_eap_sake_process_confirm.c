
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef struct wpabuf const wpabuf ;
struct eap_sm {int dummy; } ;
struct eap_sake_parse_attr {int * mic_s; } ;
struct TYPE_2__ {int auth; } ;
struct eap_sake_data {scalar_t__ state; int peerid_len; int peerid; int serverid_len; int serverid; int rand_p; int rand_s; TYPE_1__ tek; } ;
struct eap_method_ret {void* allowNotifications; void* decision; void* methodState; int ignore; } ;


 scalar_t__ CONFIRM ;
 void* DECISION_FAIL ;
 void* DECISION_UNCOND_SUCC ;
 int EAP_SAKE_AT_MIC_P ;
 int EAP_SAKE_MIC_LEN ;
 int EAP_SAKE_SUBTYPE_AUTH_REJECT ;
 int EAP_SAKE_SUBTYPE_CONFIRM ;
 int FAILURE ;
 void* FALSE ;
 void* METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SUCCESS ;
 int TRUE ;
 struct wpabuf const* eap_sake_build_msg (struct eap_sake_data*,int ,int,int ) ;
 scalar_t__ eap_sake_compute_mic (int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int *,int *) ;
 scalar_t__ eap_sake_parse_attributes (int const*,size_t,struct eap_sake_parse_attr*) ;
 int eap_sake_state (struct eap_sake_data*,int ) ;
 scalar_t__ os_memcmp_const (int *,int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf const*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int * wpabuf_put (struct wpabuf const*,int) ;
 int wpabuf_put_u8 (struct wpabuf const*,int) ;

__attribute__((used)) static struct wpabuf * eap_sake_process_confirm(struct eap_sm *sm,
      struct eap_sake_data *data,
      struct eap_method_ret *ret,
      u8 id,
      const struct wpabuf *reqData,
      const u8 *payload,
      size_t payload_len)
{
 struct eap_sake_parse_attr attr;
 u8 mic_s[EAP_SAKE_MIC_LEN];
 struct wpabuf *resp;
 u8 *rpos;

 if (data->state != CONFIRM) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Received Request/Confirm");

 if (eap_sake_parse_attributes(payload, payload_len, &attr))
  return ((void*)0);

 if (!attr.mic_s) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Request/Confirm did not "
      "include AT_MIC_S");
  return ((void*)0);
 }

 if (eap_sake_compute_mic(data->tek.auth, data->rand_s, data->rand_p,
     data->serverid, data->serverid_len,
     data->peerid, data->peerid_len, 0,
     wpabuf_head(reqData), wpabuf_len(reqData),
     attr.mic_s, mic_s)) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
  eap_sake_state(data, FAILURE);
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  ret->allowNotifications = FALSE;
  wpa_printf(MSG_DEBUG, "EAP-SAKE: Sending Response/Auth-Reject");
  return eap_sake_build_msg(data, id, 0,
       EAP_SAKE_SUBTYPE_AUTH_REJECT);
 }
 if (os_memcmp_const(attr.mic_s, mic_s, EAP_SAKE_MIC_LEN) != 0) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Incorrect AT_MIC_S");
  eap_sake_state(data, FAILURE);
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  ret->allowNotifications = FALSE;
  wpa_printf(MSG_DEBUG, "EAP-SAKE: Sending "
      "Response/Auth-Reject");
  return eap_sake_build_msg(data, id, 0,
       EAP_SAKE_SUBTYPE_AUTH_REJECT);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Sending Response/Confirm");

 resp = eap_sake_build_msg(data, id, 2 + EAP_SAKE_MIC_LEN,
      EAP_SAKE_SUBTYPE_CONFIRM);
 if (resp == ((void*)0))
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_MIC_P");
 wpabuf_put_u8(resp, EAP_SAKE_AT_MIC_P);
 wpabuf_put_u8(resp, 2 + EAP_SAKE_MIC_LEN);
 rpos = wpabuf_put(resp, EAP_SAKE_MIC_LEN);
 if (eap_sake_compute_mic(data->tek.auth, data->rand_s, data->rand_p,
     data->serverid, data->serverid_len,
     data->peerid, data->peerid_len, 1,
     wpabuf_head(resp), wpabuf_len(resp), rpos,
     rpos)) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
  wpabuf_free(resp);
  return ((void*)0);
 }

 eap_sake_state(data, SUCCESS);
 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_UNCOND_SUCC;
 ret->allowNotifications = FALSE;

 return resp;
}
