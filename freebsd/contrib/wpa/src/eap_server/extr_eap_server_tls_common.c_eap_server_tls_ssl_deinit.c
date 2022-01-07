
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ssl_data {int * tls_out; int conn; } ;
struct eap_sm {int ssl_ctx; } ;


 int eap_server_tls_free_in_buf (struct eap_ssl_data*) ;
 int tls_connection_deinit (int ,int ) ;
 int wpabuf_free (int *) ;

void eap_server_tls_ssl_deinit(struct eap_sm *sm, struct eap_ssl_data *data)
{
 tls_connection_deinit(sm->ssl_ctx, data->conn);
 eap_server_tls_free_in_buf(data);
 wpabuf_free(data->tls_out);
 data->tls_out = ((void*)0);
}
