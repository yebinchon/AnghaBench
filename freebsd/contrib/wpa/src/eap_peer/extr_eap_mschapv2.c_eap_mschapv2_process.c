
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peer_config {scalar_t__ mschapv2_retry; } ;
struct eap_mschapv2_hdr {int op_code; int mschapv2_id; } ;
struct eap_mschapv2_data {scalar_t__ prev_error; struct wpabuf* prev_challenge; } ;
struct eap_method_ret {void* ignore; } ;


 int EAP_TYPE_MSCHAPV2 ;
 int EAP_VENDOR_IETF ;
 scalar_t__ ERROR_AUTHENTICATION_FAILURE ;



 int MSG_DEBUG ;
 int MSG_INFO ;
 void* TRUE ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int eap_get_id (struct wpabuf const*) ;
 int * eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_mschapv2_challenge (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,size_t,int ) ;
 scalar_t__ eap_mschapv2_check_config (struct eap_sm*) ;
 scalar_t__ eap_mschapv2_check_mslen (struct eap_sm*,size_t,struct eap_mschapv2_hdr const*) ;
 int eap_mschapv2_copy_challenge (struct eap_mschapv2_data*,struct wpabuf const*) ;
 struct wpabuf* eap_mschapv2_failure (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,size_t,int ) ;
 struct wpabuf* eap_mschapv2_success (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,size_t,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_mschapv2_process(struct eap_sm *sm, void *priv,
         struct eap_method_ret *ret,
         const struct wpabuf *reqData)
{
 struct eap_mschapv2_data *data = priv;
 struct eap_peer_config *config = eap_get_config(sm);
 const struct eap_mschapv2_hdr *ms;
 int using_prev_challenge = 0;
 const u8 *pos;
 size_t len;
 u8 id;

 if (eap_mschapv2_check_config(sm)) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (config->mschapv2_retry && data->prev_challenge &&
     data->prev_error == ERROR_AUTHENTICATION_FAILURE) {
  wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Replacing pending packet "
      "with the previous challenge");

  reqData = data->prev_challenge;
  using_prev_challenge = 1;
  config->mschapv2_retry = 0;
 }

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, reqData,
          &len);
 if (pos == ((void*)0) || len < sizeof(*ms) + 1) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ms = (const struct eap_mschapv2_hdr *) pos;
 if (eap_mschapv2_check_mslen(sm, len, ms)) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 id = eap_get_id(reqData);
 wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: RX identifier %d mschapv2_id %d",
     id, ms->mschapv2_id);

 switch (ms->op_code) {
 case 130:
  if (!using_prev_challenge)
   eap_mschapv2_copy_challenge(data, reqData);
  return eap_mschapv2_challenge(sm, data, ret, ms, len, id);
 case 128:
  return eap_mschapv2_success(sm, data, ret, ms, len, id);
 case 129:
  return eap_mschapv2_failure(sm, data, ret, ms, len, id);
 default:
  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Unknown op %d - ignored",
      ms->op_code);
  ret->ignore = TRUE;
  return ((void*)0);
 }
}
