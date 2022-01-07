
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tls_out; int conn; } ;
struct eap_teap_data {TYPE_1__ ssl; } ;
struct eap_sm {int ssl_ctx; } ;


 int FAILURE ;
 int MSG_INFO ;
 scalar_t__ eap_server_tls_phase1 (struct eap_sm*,TYPE_1__*) ;
 int eap_teap_phase1_done (struct eap_sm*,struct eap_teap_data*) ;
 int eap_teap_state (struct eap_teap_data*,int ) ;
 int tls_connection_established (int ,int ) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpabuf_len (int ) ;

__attribute__((used)) static int eap_teap_process_phase1(struct eap_sm *sm,
       struct eap_teap_data *data)
{
 if (eap_server_tls_phase1(sm, &data->ssl) < 0) {
  wpa_printf(MSG_INFO, "EAP-TEAP: TLS processing failed");
  eap_teap_state(data, FAILURE);
  return -1;
 }

 if (!tls_connection_established(sm->ssl_ctx, data->ssl.conn) ||
     wpabuf_len(data->ssl.tls_out) > 0)
  return 1;







 return eap_teap_phase1_done(sm, data);
}
