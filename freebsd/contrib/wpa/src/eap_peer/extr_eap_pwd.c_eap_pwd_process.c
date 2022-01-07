
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {size_t out_frag_pos; scalar_t__ mtu; scalar_t__ state; size_t in_frag_pos; struct wpabuf* outbuf; struct wpabuf* inbuf; } ;
struct eap_method_ret {void* decision; void* methodState; void* ignore; void* allowNotifications; } ;


 void* DECISION_FAIL ;
 void* DECISION_UNCOND_SUCC ;
 int EAP_CODE_RESPONSE ;
 int EAP_PWD_GET_EXCHANGE (int) ;
 scalar_t__ EAP_PWD_GET_LENGTH_BIT (int) ;
 scalar_t__ EAP_PWD_GET_MORE_BIT (int) ;
 scalar_t__ EAP_PWD_HDR_SIZE ;



 int EAP_PWD_SET_LENGTH_BIT (int) ;
 int EAP_PWD_SET_MORE_BIT (int) ;
 int EAP_TYPE_PWD ;
 int EAP_VENDOR_IETF ;
 void* FALSE ;
 void* METHOD_DONE ;
 void* METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SUCCESS ;
 scalar_t__ SUCCESS_ON_FRAG_COMPLETION ;
 void* TRUE ;
 int WPA_GET_BE16 (int const*) ;
 int eap_get_id (struct wpabuf const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,scalar_t__,int ,int ) ;
 int eap_pwd_perform_commit_exchange (struct eap_sm*,struct eap_pwd_data*,struct eap_method_ret*,struct wpabuf const*,int const*,size_t) ;
 int eap_pwd_perform_confirm_exchange (struct eap_sm*,struct eap_pwd_data*,struct eap_method_ret*,struct wpabuf const*,int const*,size_t) ;
 int eap_pwd_perform_id_exchange (struct eap_sm*,struct eap_pwd_data*,struct eap_method_ret*,struct wpabuf const*,int const*,size_t) ;
 int eap_pwd_state (struct eap_pwd_data*,int ) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int* wpabuf_head_u8 (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 size_t wpabuf_size (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf *
eap_pwd_process(struct eap_sm *sm, void *priv, struct eap_method_ret *ret,
  const struct wpabuf *reqData)
{
 struct eap_pwd_data *data = priv;
 struct wpabuf *resp = ((void*)0);
 const u8 *pos, *buf;
 size_t len;
 u16 tot_len = 0;
 u8 lm_exch;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PWD, reqData, &len);
 if ((pos == ((void*)0)) || (len < 1)) {
  wpa_printf(MSG_DEBUG, "EAP-pwd: Got a frame but pos is %s and "
      "len is %d",
      pos == ((void*)0) ? "NULL" : "not NULL", (int) len);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 ret->ignore = FALSE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;
 ret->allowNotifications = FALSE;

 lm_exch = *pos;
 pos++;
 len--;




 if (data->out_frag_pos) {



  if (len)
   wpa_printf(MSG_INFO, "Bad Response! Fragmenting but "
       "not an ACK");

  wpa_printf(MSG_DEBUG, "EAP-pwd: Got an ACK for a fragment");



  len = wpabuf_len(data->outbuf) - data->out_frag_pos;
  if ((len + EAP_PWD_HDR_SIZE) > data->mtu) {
   len = data->mtu - EAP_PWD_HDR_SIZE;
   EAP_PWD_SET_MORE_BIT(lm_exch);
  }
  resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PWD,
         EAP_PWD_HDR_SIZE + len,
         EAP_CODE_RESPONSE, eap_get_id(reqData));
  if (resp == ((void*)0)) {
   wpa_printf(MSG_INFO, "Unable to allocate memory for "
       "next fragment!");
   return ((void*)0);
  }
  wpabuf_put_u8(resp, lm_exch);
  buf = wpabuf_head_u8(data->outbuf);
  wpabuf_put_data(resp, buf + data->out_frag_pos, len);
  data->out_frag_pos += len;



  if (data->out_frag_pos >= wpabuf_len(data->outbuf)) {
   wpabuf_free(data->outbuf);
   data->outbuf = ((void*)0);
   data->out_frag_pos = 0;
  }
  wpa_printf(MSG_DEBUG, "EAP-pwd: Send %s fragment of %d bytes",
      data->out_frag_pos == 0 ? "last" : "next",
      (int) len);
  if (data->state == SUCCESS_ON_FRAG_COMPLETION) {
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_UNCOND_SUCC;
   eap_pwd_state(data, SUCCESS);
  }
  return resp;
 }






 if (EAP_PWD_GET_LENGTH_BIT(lm_exch)) {
  if (len < 2) {
   wpa_printf(MSG_DEBUG,
       "EAP-pwd: Frame too short to contain Total-Length field");
   ret->ignore = TRUE;
   return ((void*)0);
  }
  tot_len = WPA_GET_BE16(pos);
  wpa_printf(MSG_DEBUG, "EAP-pwd: Incoming fragments whose "
      "total length = %d", tot_len);
  if (tot_len > 15000)
   return ((void*)0);
  if (data->inbuf) {
   wpa_printf(MSG_DEBUG,
       "EAP-pwd: Unexpected new fragment start when previous fragment is still in use");
   ret->ignore = TRUE;
   return ((void*)0);
  }
  data->inbuf = wpabuf_alloc(tot_len);
  if (data->inbuf == ((void*)0)) {
   wpa_printf(MSG_INFO, "Out of memory to buffer "
       "fragments!");
   return ((void*)0);
  }
  data->in_frag_pos = 0;
  pos += sizeof(u16);
  len -= sizeof(u16);
 }



 if (EAP_PWD_GET_MORE_BIT(lm_exch) || data->in_frag_pos) {
  if (!data->inbuf) {
   wpa_printf(MSG_DEBUG,
       "EAP-pwd: No buffer for reassembly");
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_FAIL;
   return ((void*)0);
  }
  data->in_frag_pos += len;
  if (data->in_frag_pos > wpabuf_size(data->inbuf)) {
   wpa_printf(MSG_INFO, "EAP-pwd: Buffer overflow attack "
       "detected (%d vs. %d)!",
       (int) data->in_frag_pos,
       (int) wpabuf_len(data->inbuf));
   wpabuf_free(data->inbuf);
   data->inbuf = ((void*)0);
   data->in_frag_pos = 0;
   return ((void*)0);
  }
  wpabuf_put_data(data->inbuf, pos, len);
 }
 if (EAP_PWD_GET_MORE_BIT(lm_exch)) {
  resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PWD,
         EAP_PWD_HDR_SIZE,
         EAP_CODE_RESPONSE, eap_get_id(reqData));
  if (resp != ((void*)0))
   wpabuf_put_u8(resp, (EAP_PWD_GET_EXCHANGE(lm_exch)));
  wpa_printf(MSG_DEBUG, "EAP-pwd: ACKing a %d byte fragment",
      (int) len);
  return resp;
 }



 if (data->in_frag_pos && data->inbuf) {
  wpa_printf(MSG_DEBUG, "EAP-pwd: Last fragment, %d bytes",
      (int) len);
  pos = wpabuf_head_u8(data->inbuf);
  len = data->in_frag_pos;
 }
 wpa_printf(MSG_DEBUG, "EAP-pwd: processing frame: exch %d, len %d",
     EAP_PWD_GET_EXCHANGE(lm_exch), (int) len);

 switch (EAP_PWD_GET_EXCHANGE(lm_exch)) {
 case 128:
  eap_pwd_perform_id_exchange(sm, data, ret, reqData,
         pos, len);
  break;
 case 130:
  eap_pwd_perform_commit_exchange(sm, data, ret, reqData,
      pos, len);
  break;
 case 129:
  eap_pwd_perform_confirm_exchange(sm, data, ret, reqData,
       pos, len);
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-pwd: Ignoring message with unknown "
      "opcode %d", lm_exch);
  break;
 }



 if (data->in_frag_pos) {
  wpabuf_free(data->inbuf);
  data->inbuf = ((void*)0);
  data->in_frag_pos = 0;
 }

 if (data->outbuf == ((void*)0)) {
  ret->methodState = METHOD_DONE;
  ret->decision = DECISION_FAIL;
  return ((void*)0);
 }




 lm_exch = EAP_PWD_GET_EXCHANGE(lm_exch);
 len = wpabuf_len(data->outbuf);
 if ((len + EAP_PWD_HDR_SIZE) > data->mtu) {
  resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PWD, data->mtu,
         EAP_CODE_RESPONSE, eap_get_id(reqData));



  EAP_PWD_SET_LENGTH_BIT(lm_exch);
  EAP_PWD_SET_MORE_BIT(lm_exch);
  tot_len = len;



  len = data->mtu - EAP_PWD_HDR_SIZE - sizeof(u16);
  wpa_printf(MSG_DEBUG, "EAP-pwd: Fragmenting output, total "
      "length = %d", tot_len);
 } else {
  resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PWD,
         EAP_PWD_HDR_SIZE + len,
         EAP_CODE_RESPONSE, eap_get_id(reqData));
 }
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(resp, lm_exch);
 if (EAP_PWD_GET_LENGTH_BIT(lm_exch)) {
  wpabuf_put_be16(resp, tot_len);
  data->out_frag_pos += len;
 }
 buf = wpabuf_head_u8(data->outbuf);
 wpabuf_put_data(resp, buf, len);



 if (data->out_frag_pos == 0) {
  wpabuf_free(data->outbuf);
  data->outbuf = ((void*)0);
  data->out_frag_pos = 0;
  if (data->state == SUCCESS_ON_FRAG_COMPLETION) {
   ret->methodState = METHOD_DONE;
   ret->decision = DECISION_UNCOND_SUCC;
   eap_pwd_state(data, SUCCESS);
  }
 }

 return resp;
}
