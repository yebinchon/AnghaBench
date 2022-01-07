
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {scalar_t__ state; struct wpabuf* in_buf; struct wpabuf* out_buf; int tncc; } ;
struct eap_sm {int msg_ctx; } ;
struct eap_method_ret {void* allowNotifications; int decision; int methodState; void* ignore; } ;
typedef enum tncc_process_res { ____Placeholder_tncc_process_res } tncc_process_res ;


 int DECISION_UNCOND_SUCC ;
 int EAP_CODE_RESPONSE ;
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ;
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ;
 int EAP_TNC_FLAGS_START ;
 int EAP_TNC_VERSION ;
 int EAP_TNC_VERSION_MASK ;
 int EAP_TYPE_TNC ;
 int EAP_VENDOR_IETF ;
 void* FALSE ;
 int METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;
 void* PROC_MSG ;






 void* TRUE ;
 scalar_t__ WAIT_FRAG_ACK ;
 scalar_t__ WAIT_START ;
 int WPA_GET_BE32 (int const*) ;
 int eap_get_id (struct wpabuf const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf const*,size_t*) ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int) ;
 struct wpabuf* eap_tnc_build_msg (struct eap_tnc_data*,struct eap_method_ret*,int) ;
 scalar_t__ eap_tnc_process_cont (struct eap_tnc_data*,int const*,int) ;
 struct wpabuf* eap_tnc_process_fragment (struct eap_tnc_data*,struct eap_method_ret*,int,int,int,int const*,int) ;
 int os_free (char*) ;
 size_t os_strlen (char*) ;
 int* tncc_copy_send_buf (int ,int*) ;
 char* tncc_if_tnccs_end () ;
 char* tncc_if_tnccs_start (int ) ;
 int tncc_init_connection (int ) ;
 int tncc_process_if_tnccs (int ,int ,int ) ;
 size_t tncc_total_send_len (int ) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_msg (int ,int ,char*) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int* wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,char*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 int wpabuf_set (struct wpabuf*,int const*,int) ;

__attribute__((used)) static struct wpabuf * eap_tnc_process(struct eap_sm *sm, void *priv,
           struct eap_method_ret *ret,
           const struct wpabuf *reqData)
{
 struct eap_tnc_data *data = priv;
 struct wpabuf *resp;
 const u8 *pos, *end;
 u8 *rpos, *rpos1;
 size_t len, rlen;
 size_t imc_len;
 char *start_buf, *end_buf;
 size_t start_len, end_len;
 int tncs_done = 0;
 u8 flags, id;
 u32 message_length = 0;
 struct wpabuf tmpbuf;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_TNC, reqData, &len);
 if (pos == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-TNC: Invalid frame (pos=%p len=%lu)",
      pos, (unsigned long) len);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 id = eap_get_id(reqData);

 end = pos + len;

 if (len == 0)
  flags = 0;
 else
  flags = *pos++;

 if (len > 0 && (flags & EAP_TNC_VERSION_MASK) != EAP_TNC_VERSION) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Unsupported version %d",
      flags & EAP_TNC_VERSION_MASK);
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED) {
  if (end - pos < 4) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Message underflow");
   ret->ignore = TRUE;
   return ((void*)0);
  }
  message_length = WPA_GET_BE32(pos);
  pos += 4;

  if (message_length < (u32) (end - pos) ||
      message_length > 75000) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Invalid Message "
       "Length (%d; %ld remaining in this msg)",
       message_length, (long) (end - pos));
   ret->ignore = TRUE;
   return ((void*)0);
  }
 }

 wpa_printf(MSG_DEBUG, "EAP-TNC: Received packet: Flags 0x%x "
     "Message Length %u", flags, message_length);

 if (data->state == WAIT_FRAG_ACK) {
  if (len > 1) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Unexpected payload in "
       "WAIT_FRAG_ACK state");
   ret->ignore = TRUE;
   return ((void*)0);
  }
  wpa_printf(MSG_DEBUG, "EAP-TNC: Fragment acknowledged");
  data->state = PROC_MSG;
  return eap_tnc_build_msg(data, ret, id);
 }

 if (data->in_buf && eap_tnc_process_cont(data, pos, end - pos) < 0) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 if (flags & EAP_TNC_FLAGS_MORE_FRAGMENTS) {
  return eap_tnc_process_fragment(data, ret, id, flags,
      message_length, pos,
      end - pos);
 }

 if (data->in_buf == ((void*)0)) {

  wpabuf_set(&tmpbuf, pos, end - pos);
  data->in_buf = &tmpbuf;
 }

 if (data->state == WAIT_START) {
  if (!(flags & EAP_TNC_FLAGS_START)) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Server did not use "
       "start flag in the first message");
   ret->ignore = TRUE;
   goto fail;
  }

  tncc_init_connection(data->tncc);

  data->state = PROC_MSG;
 } else {
  enum tncc_process_res res;

  if (flags & EAP_TNC_FLAGS_START) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Server used start "
       "flag again");
   ret->ignore = TRUE;
   goto fail;
  }

  res = tncc_process_if_tnccs(data->tncc,
         wpabuf_head(data->in_buf),
         wpabuf_len(data->in_buf));
  switch (res) {
  case 133:
   ret->ignore = TRUE;
   goto fail;
  case 132:
  case 130:
   wpa_printf(MSG_DEBUG, "EAP-TNC: No "
       "TNCCS-Recommendation received");
   break;
  case 131:
   wpa_msg(sm->msg_ctx, MSG_INFO,
    "TNC: Recommendation = allow");
   tncs_done = 1;
   break;
  case 128:
   wpa_msg(sm->msg_ctx, MSG_INFO,
    "TNC: Recommendation = none");
   tncs_done = 1;
   break;
  case 129:
   wpa_msg(sm->msg_ctx, MSG_INFO,
    "TNC: Recommendation = isolate");
   tncs_done = 1;
   break;
  }
 }

 if (data->in_buf != &tmpbuf)
  wpabuf_free(data->in_buf);
 data->in_buf = ((void*)0);

 ret->ignore = FALSE;
 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_UNCOND_SUCC;
 ret->allowNotifications = TRUE;

 if (tncs_done) {
  resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_TNC, 1,
         EAP_CODE_RESPONSE, eap_get_id(reqData));
  if (resp == ((void*)0))
   return ((void*)0);

  wpabuf_put_u8(resp, EAP_TNC_VERSION);
  wpa_printf(MSG_DEBUG, "EAP-TNC: TNCS done - reply with an "
      "empty ACK message");
  return resp;
 }

 imc_len = tncc_total_send_len(data->tncc);

 start_buf = tncc_if_tnccs_start(data->tncc);
 if (start_buf == ((void*)0))
  return ((void*)0);
 start_len = os_strlen(start_buf);
 end_buf = tncc_if_tnccs_end();
 if (end_buf == ((void*)0)) {
  os_free(start_buf);
  return ((void*)0);
 }
 end_len = os_strlen(end_buf);

 rlen = start_len + imc_len + end_len;
 resp = wpabuf_alloc(rlen);
 if (resp == ((void*)0)) {
  os_free(start_buf);
  os_free(end_buf);
  return ((void*)0);
 }

 wpabuf_put_data(resp, start_buf, start_len);
 os_free(start_buf);

 rpos1 = wpabuf_put(resp, 0);
 rpos = tncc_copy_send_buf(data->tncc, rpos1);
 wpabuf_put(resp, rpos - rpos1);

 wpabuf_put_data(resp, end_buf, end_len);
 os_free(end_buf);

 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-TNC: Response",
     wpabuf_head(resp), wpabuf_len(resp));

 data->out_buf = resp;
 data->state = PROC_MSG;
 return eap_tnc_build_msg(data, ret, id);

fail:
 if (data->in_buf == &tmpbuf)
  data->in_buf = ((void*)0);
 return ((void*)0);
}
