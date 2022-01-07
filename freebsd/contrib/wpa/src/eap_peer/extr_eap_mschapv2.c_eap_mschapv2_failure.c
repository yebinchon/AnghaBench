
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ pending_req_new_password; scalar_t__ new_password; } ;
struct eap_mschapv2_hdr {int dummy; } ;
struct eap_mschapv2_data {scalar_t__ prev_error; int passwd_change_version; } ;
struct eap_method_ret {void* allowNotifications; int decision; int methodState; void* ignore; } ;


 int DECISION_FAIL ;
 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_MSCHAPV2 ;
 int EAP_VENDOR_IETF ;
 scalar_t__ ERROR_AUTHENTICATION_FAILURE ;
 scalar_t__ ERROR_PASSWD_EXPIRED ;
 void* FALSE ;
 int METHOD_DONE ;
 int MSCHAPV2_OP_FAILURE ;
 int MSG_DEBUG ;
 char* dup_binstr (int const*,size_t) ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 struct wpabuf* eap_mschapv2_change_password (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,int ) ;
 int eap_mschapv2_failure_txt (struct eap_sm*,struct eap_mschapv2_data*,char*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 int os_free (char*) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_mschapv2_failure(struct eap_sm *sm,
         struct eap_mschapv2_data *data,
         struct eap_method_ret *ret,
         const struct eap_mschapv2_hdr *req,
         size_t req_len, u8 id)
{
 struct wpabuf *resp;
 const u8 *msdata = (const u8 *) (req + 1);
 char *buf;
 size_t len = req_len - sizeof(*req);
 int retry = 0;

 wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Received failure");
 wpa_hexdump_ascii(MSG_DEBUG, "EAP-MSCHAPV2: Failure data",
     msdata, len);





 buf = dup_binstr(msdata, len);
 if (buf) {
  retry = eap_mschapv2_failure_txt(sm, data, buf);
  os_free(buf);
 }

 ret->ignore = FALSE;
 ret->methodState = METHOD_DONE;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = FALSE;

 if (data->prev_error == ERROR_PASSWD_EXPIRED &&
     data->passwd_change_version == 3) {
  struct eap_peer_config *config = eap_get_config(sm);
  if (config && config->new_password)
   return eap_mschapv2_change_password(sm, data, ret, req,
           id);
  if (config && config->pending_req_new_password)
   return ((void*)0);
 } else if (retry && data->prev_error == ERROR_AUTHENTICATION_FAILURE) {



  return ((void*)0);
 }



 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, 1,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(resp, MSCHAPV2_OP_FAILURE);

 return resp;
}
