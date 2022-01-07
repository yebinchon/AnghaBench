
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct eap_ikev2_data {scalar_t__ state; int keys_ready; struct wpabuf* in_buf; TYPE_1__ ikev2; } ;


 scalar_t__ DONE ;
 int EAP_TYPE_IKEV2 ;
 int EAP_VENDOR_IETF ;
 scalar_t__ FAIL ;
 scalar_t__ FRAG_ACK ;

 int IKEV2_FLAGS_LENGTH_INCLUDED ;
 int IKEV2_FLAGS_MORE_FRAGMENTS ;
 scalar_t__ MSG ;
 int MSG_DEBUG ;

 scalar_t__ WAIT_FRAG_ACK ;
 int WPA_GET_BE32 (int const*) ;
 int* eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 scalar_t__ eap_ikev2_process_cont (struct eap_ikev2_data*,int const*,int) ;
 scalar_t__ eap_ikev2_process_fragment (struct eap_ikev2_data*,int,int ,int const*,int) ;
 scalar_t__ eap_ikev2_process_icv (struct eap_ikev2_data*,struct wpabuf*,int,int const*,int const**,int) ;
 int eap_ikev2_server_keymat (struct eap_ikev2_data*) ;
 int eap_ikev2_state (struct eap_ikev2_data*,scalar_t__) ;
 scalar_t__ ikev2_initiator_process (TYPE_1__*,struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_set (struct wpabuf*,int const*,int) ;

__attribute__((used)) static void eap_ikev2_process(struct eap_sm *sm, void *priv,
         struct wpabuf *respData)
{
 struct eap_ikev2_data *data = priv;
 const u8 *start, *pos, *end;
 size_t len;
 u8 flags;
 u32 message_length = 0;
 struct wpabuf tmpbuf;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_IKEV2, respData,
          &len);
 if (pos == ((void*)0))
  return;

 start = pos;
 end = start + len;

 if (len == 0) {

  flags = 0;
 } else
  flags = *pos++;

 if (eap_ikev2_process_icv(data, respData, flags, pos, &end,
      data->state == WAIT_FRAG_ACK && len == 0) < 0)
 {
  eap_ikev2_state(data, FAIL);
  return;
 }

 if (flags & IKEV2_FLAGS_LENGTH_INCLUDED) {
  if (end - pos < 4) {
   wpa_printf(MSG_DEBUG, "EAP-IKEV2: Message underflow");
   eap_ikev2_state(data, FAIL);
   return;
  }
  message_length = WPA_GET_BE32(pos);
  pos += 4;

  if (message_length < (u32) (end - pos)) {
   wpa_printf(MSG_DEBUG, "EAP-IKEV2: Invalid Message "
       "Length (%d; %ld remaining in this msg)",
       message_length, (long) (end - pos));
   eap_ikev2_state(data, FAIL);
   return;
  }
 }
 wpa_printf(MSG_DEBUG, "EAP-IKEV2: Received packet: Flags 0x%x "
     "Message Length %u", flags, message_length);

 if (data->state == WAIT_FRAG_ACK) {
  if (len != 0) {
   wpa_printf(MSG_DEBUG, "EAP-IKEV2: Unexpected payload "
       "in WAIT_FRAG_ACK state");
   eap_ikev2_state(data, FAIL);
   return;
  }
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Fragment acknowledged");
  eap_ikev2_state(data, MSG);
  return;
 }

 if (data->in_buf && eap_ikev2_process_cont(data, pos, end - pos) < 0) {
  eap_ikev2_state(data, FAIL);
  return;
 }

 if (flags & IKEV2_FLAGS_MORE_FRAGMENTS) {
  if (eap_ikev2_process_fragment(data, flags, message_length,
            pos, end - pos) < 0)
   eap_ikev2_state(data, FAIL);
  else
   eap_ikev2_state(data, FRAG_ACK);
  return;
 } else if (data->state == FRAG_ACK) {
  wpa_printf(MSG_DEBUG, "EAP-TNC: All fragments received");
  data->state = MSG;
 }

 if (data->in_buf == ((void*)0)) {

  wpabuf_set(&tmpbuf, pos, end - pos);
  data->in_buf = &tmpbuf;
 }

 if (ikev2_initiator_process(&data->ikev2, data->in_buf) < 0) {
  if (data->in_buf == &tmpbuf)
   data->in_buf = ((void*)0);
  eap_ikev2_state(data, FAIL);
  return;
 }

 switch (data->ikev2.state) {
 case 128:


  data->keys_ready = 1;
  break;
 case 129:
  if (data->state == FAIL)
   break;
  wpa_printf(MSG_DEBUG, "EAP-IKEV2: Authentication completed "
      "successfully");
  if (eap_ikev2_server_keymat(data))
   break;
  eap_ikev2_state(data, DONE);
  break;
 default:
  break;
 }

 if (data->in_buf != &tmpbuf)
  wpabuf_free(data->in_buf);
 data->in_buf = ((void*)0);
}
