
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_pwd_id {int dummy; } ;
struct eap_pwd_data {int id_server_len; int password_len; int * id_server; int * outbuf; int password_prep; int token; int group_num; scalar_t__ password_hash; scalar_t__ salt_len; int salt; int password; scalar_t__ out_frag_pos; } ;


 int EAP_PWD_DEFAULT_PRF ;
 int EAP_PWD_DEFAULT_RAND_FUNC ;
 int EAP_PWD_PREP_MS ;
 int EAP_PWD_PREP_NONE ;
 int EAP_PWD_PREP_SSHA1 ;
 int EAP_PWD_PREP_SSHA256 ;
 int EAP_PWD_PREP_SSHA512 ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int eap_pwd_state (struct eap_pwd_data*,int ) ;
 scalar_t__ os_get_random (int *,int) ;
 int wpa_hexdump (int ,char*,int ,scalar_t__) ;
 int wpa_hexdump_key (int ,char*,int ,int) ;
 int wpa_printf (int ,char*,...) ;
 int * wpabuf_alloc (int) ;
 int wpabuf_free (int *) ;
 int wpabuf_put_be16 (int *,int ) ;
 int wpabuf_put_data (int *,int *,int) ;
 int wpabuf_put_u8 (int *,int ) ;

__attribute__((used)) static void eap_pwd_build_id_req(struct eap_sm *sm, struct eap_pwd_data *data,
     u8 id)
{
 wpa_printf(MSG_DEBUG, "EAP-pwd: ID/Request");



 if (data->out_frag_pos)
  return;

 data->outbuf = wpabuf_alloc(sizeof(struct eap_pwd_id) +
        data->id_server_len);
 if (data->outbuf == ((void*)0)) {
  eap_pwd_state(data, FAILURE);
  return;
 }

 if (os_get_random((u8 *) &data->token, sizeof(data->token)) < 0) {
  wpabuf_free(data->outbuf);
  data->outbuf = ((void*)0);
  eap_pwd_state(data, FAILURE);
  return;
 }

 wpa_hexdump_key(MSG_DEBUG, "EAP-pwd (server): password",
   data->password, data->password_len);
 if (data->salt_len)
  wpa_hexdump(MSG_DEBUG, "EAP-pwd (server): salt",
       data->salt, data->salt_len);





 if (data->salt_len) {
  switch (data->password_len) {
  case 20:
   data->password_prep = EAP_PWD_PREP_SSHA1;
   break;
  case 32:
   data->password_prep = EAP_PWD_PREP_SSHA256;
   break;
  case 64:
   data->password_prep = EAP_PWD_PREP_SSHA512;
   break;
  default:
   wpa_printf(MSG_INFO,
       "EAP-pwd (server): bad size %d for salted password",
       (int) data->password_len);
   eap_pwd_state(data, FAILURE);
   return;
  }
 } else {

  data->password_prep = data->password_hash ? EAP_PWD_PREP_MS :
   EAP_PWD_PREP_NONE;
 }

 wpabuf_put_be16(data->outbuf, data->group_num);
 wpabuf_put_u8(data->outbuf, EAP_PWD_DEFAULT_RAND_FUNC);
 wpabuf_put_u8(data->outbuf, EAP_PWD_DEFAULT_PRF);
 wpabuf_put_data(data->outbuf, &data->token, sizeof(data->token));
 wpabuf_put_u8(data->outbuf, data->password_prep);
 wpabuf_put_data(data->outbuf, data->id_server, data->id_server_len);
}
