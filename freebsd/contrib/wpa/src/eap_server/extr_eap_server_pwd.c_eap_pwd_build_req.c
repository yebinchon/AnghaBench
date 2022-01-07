
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_pwd_data {int state; scalar_t__ out_frag_pos; scalar_t__ mtu; struct wpabuf* outbuf; scalar_t__ in_frag_pos; } ;


 int EAP_CODE_REQUEST ;
 scalar_t__ EAP_PWD_GET_LENGTH_BIT (int ) ;
 scalar_t__ EAP_PWD_HDR_SIZE ;
 int EAP_PWD_OPCODE_COMMIT_EXCH ;
 int EAP_PWD_OPCODE_CONFIRM_EXCH ;
 int EAP_PWD_OPCODE_ID_EXCH ;
 int EAP_PWD_SET_LENGTH_BIT (int ) ;
 int EAP_PWD_SET_MORE_BIT (int ) ;
 int EAP_TYPE_PWD ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;



 struct wpabuf* eap_msg_alloc (int ,int ,scalar_t__,int ,int ) ;
 int eap_pwd_build_commit_req (struct eap_sm*,struct eap_pwd_data*,int ) ;
 int eap_pwd_build_confirm_req (struct eap_sm*,struct eap_pwd_data*,int ) ;
 int eap_pwd_build_id_req (struct eap_sm*,struct eap_pwd_data*,int ) ;
 int eap_pwd_state (struct eap_pwd_data*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head_u8 (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf *
eap_pwd_build_req(struct eap_sm *sm, void *priv, u8 id)
{
 struct eap_pwd_data *data = priv;
 struct wpabuf *req;
 u8 lm_exch;
 const u8 *buf;
 u16 totlen = 0;
 size_t len;




 if (data->in_frag_pos) {
  wpa_printf(MSG_DEBUG, "EAP-pwd: ACKing a fragment!!");
  req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PWD,
        EAP_PWD_HDR_SIZE, EAP_CODE_REQUEST, id);
  if (req == ((void*)0)) {
   eap_pwd_state(data, FAILURE);
   return ((void*)0);
  }
  switch (data->state) {
  case 128:
   wpabuf_put_u8(req, EAP_PWD_OPCODE_ID_EXCH);
   break;
  case 130:
   wpabuf_put_u8(req, EAP_PWD_OPCODE_COMMIT_EXCH);
   break;
  case 129:
   wpabuf_put_u8(req, EAP_PWD_OPCODE_CONFIRM_EXCH);
   break;
  default:
   eap_pwd_state(data, FAILURE);
   wpabuf_free(req);
   return ((void*)0);
  }
  return req;
 }




 switch (data->state) {
 case 128:
  eap_pwd_build_id_req(sm, data, id);
  lm_exch = EAP_PWD_OPCODE_ID_EXCH;
  break;
 case 130:
  eap_pwd_build_commit_req(sm, data, id);
  lm_exch = EAP_PWD_OPCODE_COMMIT_EXCH;
  break;
 case 129:
  eap_pwd_build_confirm_req(sm, data, id);
  lm_exch = EAP_PWD_OPCODE_CONFIRM_EXCH;
  break;
 default:
  wpa_printf(MSG_INFO, "EAP-pwd: Unknown state %d in build_req",
      data->state);
  eap_pwd_state(data, FAILURE);
  lm_exch = 0;
  break;
 }

 if (data->state == FAILURE)
  return ((void*)0);




 len = wpabuf_len(data->outbuf) - data->out_frag_pos;
 if ((len + EAP_PWD_HDR_SIZE) > data->mtu) {
  len = data->mtu - EAP_PWD_HDR_SIZE;
  EAP_PWD_SET_MORE_BIT(lm_exch);




  if (data->out_frag_pos == 0) {
   EAP_PWD_SET_LENGTH_BIT(lm_exch);
   totlen = wpabuf_len(data->outbuf) +
    EAP_PWD_HDR_SIZE + sizeof(u16);
   len -= sizeof(u16);
   wpa_printf(MSG_DEBUG, "EAP-pwd: Fragmenting output, "
       "total length = %d", totlen);
  }
  wpa_printf(MSG_DEBUG, "EAP-pwd: Send a %d byte fragment",
      (int) len);
 }




 req = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PWD,
       EAP_PWD_HDR_SIZE + len +
       (totlen ? sizeof(u16) : 0),
       EAP_CODE_REQUEST, id);
 if (req == ((void*)0)) {
  eap_pwd_state(data, FAILURE);
  return ((void*)0);
 }

 wpabuf_put_u8(req, lm_exch);
 if (EAP_PWD_GET_LENGTH_BIT(lm_exch))
  wpabuf_put_be16(req, totlen);

 buf = wpabuf_head_u8(data->outbuf);
 wpabuf_put_data(req, buf + data->out_frag_pos, len);
 data->out_frag_pos += len;



 if (data->out_frag_pos >= wpabuf_len(data->outbuf)) {
  wpabuf_free(data->outbuf);
  data->outbuf = ((void*)0);
  data->out_frag_pos = 0;
 }

 return req;
}
