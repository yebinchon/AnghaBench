
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tls_data {int pending_resp; struct eap_tls_data* session_id; int ssl; } ;
struct eap_sm {int dummy; } ;


 int eap_peer_tls_ssl_deinit (struct eap_sm*,int *) ;
 int eap_tls_free_key (struct eap_tls_data*) ;
 int os_free (struct eap_tls_data*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_tls_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_tls_data *data = priv;
 if (data == ((void*)0))
  return;
 eap_peer_tls_ssl_deinit(sm, &data->ssl);
 eap_tls_free_key(data);
 os_free(data->session_id);
 wpabuf_free(data->pending_resp);
 os_free(data);
}
