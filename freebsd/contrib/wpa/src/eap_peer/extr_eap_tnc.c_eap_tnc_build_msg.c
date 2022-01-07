
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {scalar_t__ out_used; int fragment_size; int state; int * out_buf; } ;
struct eap_method_ret {int decision; int methodState; int allowNotifications; int ignore; } ;


 int DECISION_FAIL ;
 int EAP_CODE_RESPONSE ;
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ;
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ;
 int EAP_TNC_VERSION ;
 int EAP_TYPE_TNC ;
 int EAP_VENDOR_IETF ;
 int FALSE ;
 int METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int TRUE ;
 int WAIT_FRAG_ACK ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;
 scalar_t__ wpabuf_head_u8 (int *) ;
 scalar_t__ wpabuf_len (int *) ;
 int wpabuf_put_be32 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_tnc_build_msg(struct eap_tnc_data *data,
      struct eap_method_ret *ret, u8 id)
{
 struct wpabuf *resp;
 u8 flags;
 size_t send_len, plen;

 ret->ignore = FALSE;
 wpa_printf(MSG_DEBUG, "EAP-TNC: Generating Response");
 ret->allowNotifications = TRUE;

 flags = EAP_TNC_VERSION;
 send_len = wpabuf_len(data->out_buf) - data->out_used;
 if (1 + send_len > data->fragment_size) {
  send_len = data->fragment_size - 1;
  flags |= EAP_TNC_FLAGS_MORE_FRAGMENTS;
  if (data->out_used == 0) {
   flags |= EAP_TNC_FLAGS_LENGTH_INCLUDED;
   send_len -= 4;
  }
 }

 plen = 1 + send_len;
 if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED)
  plen += 4;
 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_TNC, plen,
        EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(resp, flags);
 if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED)
  wpabuf_put_be32(resp, wpabuf_len(data->out_buf));

 wpabuf_put_data(resp, wpabuf_head_u8(data->out_buf) + data->out_used,
   send_len);
 data->out_used += send_len;

 ret->methodState = METHOD_MAY_CONT;
 ret->decision = DECISION_FAIL;

 if (data->out_used == wpabuf_len(data->out_buf)) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Sending out %lu bytes "
      "(message sent completely)",
      (unsigned long) send_len);
  wpabuf_free(data->out_buf);
  data->out_buf = ((void*)0);
  data->out_used = 0;
 } else {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Sending out %lu bytes "
      "(%lu more to send)", (unsigned long) send_len,
      (unsigned long) wpabuf_len(data->out_buf) -
      data->out_used);
  data->state = WAIT_FRAG_ACK;
 }

 return resp;
}
