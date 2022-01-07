
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tls_data {int ssl; } ;
struct eap_sm {int dummy; } ;


 int eap_server_tls_ssl_deinit (struct eap_sm*,int *) ;
 int os_free (struct eap_tls_data*) ;

__attribute__((used)) static void eap_tls_reset(struct eap_sm *sm, void *priv)
{
 struct eap_tls_data *data = priv;
 if (data == ((void*)0))
  return;
 eap_server_tls_ssl_deinit(sm, &data->ssl);
 os_free(data);
}
