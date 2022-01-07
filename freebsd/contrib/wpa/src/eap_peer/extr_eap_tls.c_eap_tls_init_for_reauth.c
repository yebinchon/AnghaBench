
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_tls_data {int ssl; struct eap_tls_data* session_id; } ;
struct eap_sm {int dummy; } ;


 scalar_t__ eap_peer_tls_reauth_init (struct eap_sm*,int *) ;
 int eap_tls_free_key (struct eap_tls_data*) ;
 int os_free (struct eap_tls_data*) ;

__attribute__((used)) static void * eap_tls_init_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_tls_data *data = priv;
 eap_tls_free_key(data);
 os_free(data->session_id);
 data->session_id = ((void*)0);
 if (eap_peer_tls_reauth_init(sm, &data->ssl)) {
  os_free(data);
  return ((void*)0);
 }
 return priv;
}
