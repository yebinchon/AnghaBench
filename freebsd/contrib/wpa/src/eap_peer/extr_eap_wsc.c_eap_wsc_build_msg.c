
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_wsc_data {scalar_t__ out_used; int fragment_size; int out_op_code; scalar_t__ state; int * out_buf; } ;
struct eap_method_ret {int methodState; int decision; int allowNotifications; int ignore; } ;


 int DECISION_FAIL ;
 int EAP_CODE_RESPONSE ;
 int EAP_VENDOR_TYPE_WSC ;
 int EAP_VENDOR_WFA ;
 scalar_t__ FAIL ;
 int FALSE ;
 scalar_t__ MESG ;
 int METHOD_DONE ;
 int METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int TRUE ;
 scalar_t__ WAIT_FRAG_ACK ;
 int WSC_ACK ;
 int WSC_Done ;
 int WSC_FLAGS_LF ;
 int WSC_FLAGS_MF ;
 int WSC_NACK ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int) ;
 int eap_wsc_state (struct eap_wsc_data*,scalar_t__) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;
 scalar_t__ wpabuf_head_u8 (int *) ;
 scalar_t__ wpabuf_len (int *) ;
 int wpabuf_put_be16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_wsc_build_msg(struct eap_wsc_data *data,
      struct eap_method_ret *ret, u8 id)
{
 struct wpabuf *resp;
 u8 flags;
 size_t send_len, plen;

 ret->ignore = FALSE;
 wpa_printf(MSG_DEBUG, "EAP-WSC: Generating Response");
 ret->allowNotifications = TRUE;

 flags = 0;
 send_len = wpabuf_len(data->out_buf) - data->out_used;
 if (2 + send_len > data->fragment_size) {
  send_len = data->fragment_size - 2;
  flags |= WSC_FLAGS_MF;
  if (data->out_used == 0) {
   flags |= WSC_FLAGS_LF;
   send_len -= 2;
  }
 }
 plen = 2 + send_len;
 if (flags & WSC_FLAGS_LF)
  plen += 2;
 resp = eap_msg_alloc(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, plen,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(resp, data->out_op_code);
 wpabuf_put_u8(resp, flags);
 if (flags & WSC_FLAGS_LF)
  wpabuf_put_be16(resp, wpabuf_len(data->out_buf));

 wpabuf_put_data(resp, wpabuf_head_u8(data->out_buf) + data->out_used,
   send_len);
 data->out_used += send_len;

 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;

 if (data->out_used == wpabuf_len(data->out_buf)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Sending out %lu bytes "
      "(message sent completely)",
      (unsigned long) send_len);
  wpabuf_free(data->out_buf);
  data->out_buf = ((void*)0);
  data->out_used = 0;
  if ((data->state == FAIL && data->out_op_code == WSC_ACK) ||
      data->out_op_code == WSC_NACK ||
      data->out_op_code == WSC_Done) {
   eap_wsc_state(data, FAIL);
   ret->methodState = METHOD_DONE;
  } else
   eap_wsc_state(data, MESG);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Sending out %lu bytes "
      "(%lu more to send)", (unsigned long) send_len,
      (unsigned long) wpabuf_len(data->out_buf) -
      data->out_used);
  eap_wsc_state(data, WAIT_FRAG_ACK);
 }

 return resp;
}
