
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_ttls_data {int ttls_version; int resuming; TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;
struct eap_method_ret {int dummy; } ;


 int EAP_TLS_FLAGS_START ;
 int EAP_TLS_VERSION_MASK ;
 int EAP_TYPE_TTLS ;
 int MSG_DEBUG ;
 int eap_get_id (struct wpabuf const*) ;
 struct wpabuf* eap_peer_tls_build_ack (int,int ,int ) ;
 int* eap_peer_tls_process_init (struct eap_sm*,TYPE_1__*,int ,struct eap_method_ret*,struct wpabuf const*,size_t*,int*) ;
 int eap_ttls_check_auth_status (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*) ;
 int eap_ttls_decrypt (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int,struct wpabuf*,struct wpabuf**) ;
 int eap_ttls_process_handshake (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,int,struct wpabuf*,struct wpabuf**) ;
 scalar_t__ tls_connection_established (int ,int ) ;
 int wpa_printf (int ,char*,int,int ) ;
 int wpabuf_clear_free (struct wpabuf*) ;
 int wpabuf_set (struct wpabuf*,int const*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_ttls_process(struct eap_sm *sm, void *priv,
     struct eap_method_ret *ret,
     const struct wpabuf *reqData)
{
 size_t left;
 int res;
 u8 flags, id;
 struct wpabuf *resp;
 const u8 *pos;
 struct eap_ttls_data *data = priv;
 struct wpabuf msg;

 pos = eap_peer_tls_process_init(sm, &data->ssl, EAP_TYPE_TTLS, ret,
     reqData, &left, &flags);
 if (pos == ((void*)0))
  return ((void*)0);
 id = eap_get_id(reqData);

 if (flags & EAP_TLS_FLAGS_START) {
  wpa_printf(MSG_DEBUG, "EAP-TTLS: Start (server ver=%d, own "
      "ver=%d)", flags & EAP_TLS_VERSION_MASK,
      data->ttls_version);






  left = 0;
 }

 wpabuf_set(&msg, pos, left);

 resp = ((void*)0);
 if (tls_connection_established(sm->ssl_ctx, data->ssl.conn) &&
     !data->resuming) {
  res = eap_ttls_decrypt(sm, data, ret, id, &msg, &resp);
 } else {
  res = eap_ttls_process_handshake(sm, data, ret, id,
       &msg, &resp);
 }

 eap_ttls_check_auth_status(sm, data, ret);



 if (res == 1) {
  wpabuf_clear_free(resp);
  return eap_peer_tls_build_ack(id, EAP_TYPE_TTLS,
           data->ttls_version);
 }
 return resp;
}
