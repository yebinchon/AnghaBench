
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int ssl_ctx; } ;
struct TYPE_2__ {int tls_out; int conn; } ;
struct eap_fast_data {TYPE_1__ ssl; } ;


 int FAILURE ;
 int MSG_INFO ;
 int eap_fast_phase1_done (struct eap_sm*,struct eap_fast_data*) ;
 int eap_fast_state (struct eap_fast_data*,int ) ;
 scalar_t__ eap_server_tls_phase1 (struct eap_sm*,TYPE_1__*) ;
 int tls_connection_established (int ,int ) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpabuf_len (int ) ;

__attribute__((used)) static int eap_fast_process_phase1(struct eap_sm *sm,
       struct eap_fast_data *data)
{
 if (eap_server_tls_phase1(sm, &data->ssl) < 0) {
  wpa_printf(MSG_INFO, "EAP-FAST: TLS processing failed");
  eap_fast_state(data, FAILURE);
  return -1;
 }

 if (!tls_connection_established(sm->ssl_ctx, data->ssl.conn) ||
     wpabuf_len(data->ssl.tls_out) > 0)
  return 1;







 return eap_fast_phase1_done(sm, data);
}
