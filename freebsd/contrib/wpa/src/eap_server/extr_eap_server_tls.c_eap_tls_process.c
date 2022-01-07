
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int conn; } ;
struct eap_tls_data {scalar_t__ const eap_type; TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int SUCCESS ;
 scalar_t__ eap_server_tls_process (struct eap_sm*,TYPE_1__*,struct wpabuf*,struct eap_tls_data*,scalar_t__ const,int *,int ) ;
 int eap_tls_process_msg ;
 int eap_tls_state (struct eap_tls_data*,int ) ;
 int tls_connection_established (int ,int ) ;
 struct wpabuf* tls_connection_get_success_data (int ) ;
 int tls_connection_resumed (int ,int ) ;
 int tls_connection_set_success_data_resumed (int ) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__* wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static void eap_tls_process(struct eap_sm *sm, void *priv,
       struct wpabuf *respData)
{
 struct eap_tls_data *data = priv;
 const struct wpabuf *buf;
 const u8 *pos;

 if (eap_server_tls_process(sm, &data->ssl, respData, data,
       data->eap_type, ((void*)0), eap_tls_process_msg) <
     0) {
  eap_tls_state(data, FAILURE);
  return;
 }

 if (!tls_connection_established(sm->ssl_ctx, data->ssl.conn) ||
     !tls_connection_resumed(sm->ssl_ctx, data->ssl.conn))
  return;

 buf = tls_connection_get_success_data(data->ssl.conn);
 if (!buf || wpabuf_len(buf) < 1) {
  wpa_printf(MSG_DEBUG,
      "EAP-TLS: No success data in resumed session - reject attempt");
  eap_tls_state(data, FAILURE);
  return;
 }

 pos = wpabuf_head(buf);
 if (*pos != data->eap_type) {
  wpa_printf(MSG_DEBUG,
      "EAP-TLS: Resumed session for another EAP type (%u) - reject attempt",
      *pos);
  eap_tls_state(data, FAILURE);
  return;
 }

 wpa_printf(MSG_DEBUG,
     "EAP-TLS: Resuming previous session");
 eap_tls_state(data, SUCCESS);
 tls_connection_set_success_data_resumed(data->ssl.conn);


}
