
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {size_t in_frag_pos; int * inbuf; scalar_t__ out_frag_pos; } ;


 int EAP_PWD_GET_EXCHANGE (int ) ;
 scalar_t__ EAP_PWD_GET_LENGTH_BIT (int ) ;
 scalar_t__ EAP_PWD_GET_MORE_BIT (int ) ;



 int EAP_TYPE_PWD ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int * eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int eap_pwd_process_commit_resp (struct eap_sm*,struct eap_pwd_data*,int const*,size_t) ;
 int eap_pwd_process_confirm_resp (struct eap_sm*,struct eap_pwd_data*,int const*,size_t) ;
 int eap_pwd_process_id_resp (struct eap_sm*,struct eap_pwd_data*,int const*,size_t) ;
 int eap_pwd_state (struct eap_pwd_data*,int ) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc (int) ;
 int wpabuf_free (int *) ;
 int * wpabuf_head_u8 (int *) ;
 int wpabuf_put_data (int *,int const*,size_t) ;
 size_t wpabuf_size (int *) ;

__attribute__((used)) static void eap_pwd_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_pwd_data *data = priv;
 const u8 *pos;
 size_t len;
 u8 lm_exch;
 u16 tot_len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_PWD, respData, &len);
 if ((pos == ((void*)0)) || (len < 1)) {
  wpa_printf(MSG_INFO, "Bad EAP header! pos %s and len = %d",
      (pos == ((void*)0)) ? "is NULL" : "is not NULL",
      (int) len);
  return;
 }

 lm_exch = *pos;
 pos++;
 len--;





 if (data->out_frag_pos) {
  if (len > 1)
   wpa_printf(MSG_INFO, "EAP-pwd: Bad response! "
       "Fragmenting but not an ACK");
  else
   wpa_printf(MSG_DEBUG, "EAP-pwd: received ACK from "
       "peer");
  return;
 }





 if (EAP_PWD_GET_LENGTH_BIT(lm_exch)) {
  if (len < 2) {
   wpa_printf(MSG_DEBUG,
       "EAP-pwd: Frame too short to contain Total-Length field");
   return;
  }
  tot_len = WPA_GET_BE16(pos);
  wpa_printf(MSG_DEBUG, "EAP-pwd: Incoming fragments, total "
      "length = %d", tot_len);
  if (tot_len > 15000)
   return;
  if (data->inbuf) {
   wpa_printf(MSG_DEBUG,
       "EAP-pwd: Unexpected new fragment start when previous fragment is still in use");
   return;
  }
  data->inbuf = wpabuf_alloc(tot_len);
  if (data->inbuf == ((void*)0)) {
   wpa_printf(MSG_INFO, "EAP-pwd: Out of memory to "
       "buffer fragments!");
   return;
  }
  data->in_frag_pos = 0;
  pos += sizeof(u16);
  len -= sizeof(u16);
 }



 if (EAP_PWD_GET_MORE_BIT(lm_exch) || data->in_frag_pos) {
  if (!data->inbuf) {
   wpa_printf(MSG_DEBUG,
       "EAP-pwd: No buffer for reassembly");
   eap_pwd_state(data, FAILURE);
   return;
  }
  if ((data->in_frag_pos + len) > wpabuf_size(data->inbuf)) {
   wpa_printf(MSG_DEBUG, "EAP-pwd: Buffer overflow "
       "attack detected! (%d+%d > %d)",
       (int) data->in_frag_pos, (int) len,
       (int) wpabuf_size(data->inbuf));
   eap_pwd_state(data, FAILURE);
   return;
  }
  wpabuf_put_data(data->inbuf, pos, len);
  data->in_frag_pos += len;
 }
 if (EAP_PWD_GET_MORE_BIT(lm_exch)) {
  wpa_printf(MSG_DEBUG, "EAP-pwd: Got a %d byte fragment",
      (int) len);
  return;
 }




 if (data->in_frag_pos && data->inbuf) {
  pos = wpabuf_head_u8(data->inbuf);
  len = data->in_frag_pos;
  wpa_printf(MSG_DEBUG, "EAP-pwd: Last fragment, %d bytes",
      (int) len);
 }
 switch (EAP_PWD_GET_EXCHANGE(lm_exch)) {
 case 128:
  eap_pwd_process_id_resp(sm, data, pos, len);
  break;
 case 130:
  eap_pwd_process_commit_resp(sm, data, pos, len);
  break;
 case 129:
  eap_pwd_process_confirm_resp(sm, data, pos, len);
  break;
 }




 if (data->in_frag_pos) {
  wpabuf_free(data->inbuf);
  data->inbuf = ((void*)0);
  data->in_frag_pos = 0;
 }
}
