
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_mschapv2_hdr {int dummy; } ;
struct eap_mschapv2_data {int success; scalar_t__ prev_error; int auth_response; int auth_response_valid; } ;
struct eap_method_ret {int allowNotifications; int decision; void* methodState; int ignore; } ;


 int DECISION_FAIL ;
 int DECISION_UNCOND_SUCC ;
 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_MSCHAPV2 ;
 int EAP_VENDOR_IETF ;
 scalar_t__ ERROR_PASSWD_EXPIRED ;
 int FALSE ;
 void* METHOD_DONE ;
 int MSCHAPV2_AUTH_RESPONSE_LEN ;
 int MSCHAPV2_OP_SUCCESS ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int TRUE ;
 int eap_mschapv2_password_changed (struct eap_sm*,struct eap_mschapv2_data*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,char) ;
 scalar_t__ mschapv2_verify_auth_response (int ,char const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,char const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_mschapv2_success(struct eap_sm *sm,
         struct eap_mschapv2_data *data,
         struct eap_method_ret *ret,
         const struct eap_mschapv2_hdr *req,
         size_t req_len, u8 id)
{
 struct wpabuf *resp;
 const u8 *pos;
 size_t len;

 wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Received success");
 len = req_len - sizeof(*req);
 pos = (const u8 *) (req + 1);
 if (!data->auth_response_valid ||
     mschapv2_verify_auth_response(data->auth_response, pos, len)) {
  wpa_printf(MSG_WARNING, "EAP-MSCHAPV2: Invalid authenticator "
      "response in success request");
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return ((void*)0);
 }
 pos += 2 + 2 * MSCHAPV2_AUTH_RESPONSE_LEN;
 len -= 2 + 2 * MSCHAPV2_AUTH_RESPONSE_LEN;
 while (len > 0 && *pos == ' ') {
  pos++;
  len--;
 }
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-MSCHAPV2: Success message",
     pos, len);
 wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Authentication succeeded");



 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, 1,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Failed to allocate "
      "buffer for success response");
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpabuf_put_u8(resp, MSCHAPV2_OP_SUCCESS);

 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_UNCOND_SUCC;
 ret->allowNotifications = FALSE;
 data->success = 1;

 if (data->prev_error == ERROR_PASSWD_EXPIRED)
  eap_mschapv2_password_changed(sm, data);

 return resp;
}
