
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {scalar_t__ state; struct wpabuf* in_buf; } ;
struct eap_sm {int dummy; } ;


 scalar_t__ CONTINUE ;
 scalar_t__ DONE ;
 int EAP_TNC_FLAGS_LENGTH_INCLUDED ;
 int EAP_TNC_FLAGS_MORE_FRAGMENTS ;
 int EAP_TYPE_TNC ;
 int EAP_VENDOR_IETF ;
 scalar_t__ FAIL ;
 scalar_t__ FRAG_ACK ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 scalar_t__ WAIT_FRAG_ACK ;
 int WPA_GET_BE32 (int const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 scalar_t__ eap_tnc_process_cont (struct eap_tnc_data*,int const*,int) ;
 scalar_t__ eap_tnc_process_fragment (struct eap_tnc_data*,int,int,int const*,int) ;
 int eap_tnc_set_state (struct eap_tnc_data*,scalar_t__) ;
 int tncs_process (struct eap_tnc_data*,struct wpabuf*) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_set (struct wpabuf*,int const*,int) ;

__attribute__((used)) static void eap_tnc_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_tnc_data *data = priv;
 const u8 *pos, *end;
 size_t len;
 u8 flags;
 u32 message_length = 0;
 struct wpabuf tmpbuf;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_TNC, respData, &len);
 if (pos == ((void*)0))
  return;

 end = pos + len;

 if (len == 1 && (data->state == DONE || data->state == FAIL)) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: Peer acknowledged the last "
      "message");
  return;
 }

 if (len == 0) {

  flags = 0;
 } else
  flags = *pos++;

 if (flags & EAP_TNC_FLAGS_LENGTH_INCLUDED) {
  if (end - pos < 4) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Message underflow");
   eap_tnc_set_state(data, FAIL);
   return;
  }
  message_length = WPA_GET_BE32(pos);
  pos += 4;

  if (message_length < (u32) (end - pos) ||
      message_length > 75000) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Invalid Message "
       "Length (%d; %ld remaining in this msg)",
       message_length, (long) (end - pos));
   eap_tnc_set_state(data, FAIL);
   return;
  }
 }
 wpa_printf(MSG_DEBUG, "EAP-TNC: Received packet: Flags 0x%x "
     "Message Length %u", flags, message_length);

 if (data->state == WAIT_FRAG_ACK) {
  if (len > 1) {
   wpa_printf(MSG_DEBUG, "EAP-TNC: Unexpected payload "
       "in WAIT_FRAG_ACK state");
   eap_tnc_set_state(data, FAIL);
   return;
  }
  wpa_printf(MSG_DEBUG, "EAP-TNC: Fragment acknowledged");
  eap_tnc_set_state(data, CONTINUE);
  return;
 }

 if (data->in_buf && eap_tnc_process_cont(data, pos, end - pos) < 0) {
  eap_tnc_set_state(data, FAIL);
  return;
 }

 if (flags & EAP_TNC_FLAGS_MORE_FRAGMENTS) {
  if (eap_tnc_process_fragment(data, flags, message_length,
          pos, end - pos) < 0)
   eap_tnc_set_state(data, FAIL);
  else
   eap_tnc_set_state(data, FRAG_ACK);
  return;
 } else if (data->state == FRAG_ACK) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: All fragments received");
  eap_tnc_set_state(data, CONTINUE);
 }

 if (data->in_buf == ((void*)0)) {

  wpabuf_set(&tmpbuf, pos, end - pos);
  data->in_buf = &tmpbuf;
 }

 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-TNC: Received payload",
     wpabuf_head(data->in_buf), wpabuf_len(data->in_buf));
 tncs_process(data, data->in_buf);

 if (data->in_buf != &tmpbuf)
  wpabuf_free(data->in_buf);
 data->in_buf = ((void*)0);
}
