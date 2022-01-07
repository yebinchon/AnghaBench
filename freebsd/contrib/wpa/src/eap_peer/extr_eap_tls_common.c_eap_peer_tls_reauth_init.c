
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int conn; int ssl_ctx; } ;
struct eap_sm {int dummy; } ;


 int eap_peer_tls_reset_input (struct eap_ssl_data*) ;
 int eap_peer_tls_reset_output (struct eap_ssl_data*) ;
 int tls_connection_shutdown (int ,int ) ;

int eap_peer_tls_reauth_init(struct eap_sm *sm, struct eap_ssl_data *data)
{
 eap_peer_tls_reset_input(data);
 eap_peer_tls_reset_output(data);
 return tls_connection_shutdown(data->ssl_ctx, data->conn);
}
