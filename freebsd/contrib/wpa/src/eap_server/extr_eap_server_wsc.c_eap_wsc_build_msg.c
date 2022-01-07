
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_wsc_data {scalar_t__ out_used; int fragment_size; int out_op_code; int * out_buf; } ;


 int EAP_CODE_REQUEST ;
 int EAP_VENDOR_TYPE_WSC ;
 int EAP_VENDOR_WFA ;
 int MESG ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WAIT_FRAG_ACK ;
 int WSC_FLAGS_LF ;
 int WSC_FLAGS_MF ;
 struct wpabuf* eap_msg_alloc (int ,int ,size_t,int ,int) ;
 int eap_wsc_state (struct eap_wsc_data*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (int *) ;
 scalar_t__ wpabuf_head_u8 (int *) ;
 scalar_t__ wpabuf_len (int *) ;
 int wpabuf_put_be16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_wsc_build_msg(struct eap_wsc_data *data, u8 id)
{
 struct wpabuf *req;
 u8 flags;
 size_t send_len, plen;

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
 req = eap_msg_alloc(EAP_VENDOR_WFA, EAP_VENDOR_TYPE_WSC, plen,
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  wpa_printf(MSG_ERROR, "EAP-WSC: Failed to allocate memory for "
      "request");
  return ((void*)0);
 }

 wpabuf_put_u8(req, data->out_op_code);
 wpabuf_put_u8(req, flags);
 if (flags & WSC_FLAGS_LF)
  wpabuf_put_be16(req, wpabuf_len(data->out_buf));

 wpabuf_put_data(req, wpabuf_head_u8(data->out_buf) + data->out_used,
   send_len);
 data->out_used += send_len;

 if (data->out_used == wpabuf_len(data->out_buf)) {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Sending out %lu bytes "
      "(message sent completely)",
      (unsigned long) send_len);
  wpabuf_free(data->out_buf);
  data->out_buf = ((void*)0);
  data->out_used = 0;
  eap_wsc_state(data, MESG);
 } else {
  wpa_printf(MSG_DEBUG, "EAP-WSC: Sending out %lu bytes "
      "(%lu more to send)", (unsigned long) send_len,
      (unsigned long) wpabuf_len(data->out_buf) -
      data->out_used);
  eap_wsc_state(data, WAIT_FRAG_ACK);
 }

 return req;
}
