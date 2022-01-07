
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_ttls_data {int pending_resp; int pending_phase2_req; struct eap_ttls_data* session_id; int ssl; struct eap_ttls_data* phase2_eap_types; } ;
struct eap_sm {int dummy; } ;


 int eap_peer_tls_ssl_deinit (struct eap_sm*,int *) ;
 int eap_ttls_free_key (struct eap_ttls_data*) ;
 int eap_ttls_phase2_eap_deinit (struct eap_sm*,struct eap_ttls_data*) ;
 int os_free (struct eap_ttls_data*) ;
 int wpabuf_clear_free (int ) ;

__attribute__((used)) static void eap_ttls_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_ttls_data *data = priv;
 if (data == ((void*)0))
  return;
 eap_ttls_phase2_eap_deinit(sm, data);
 os_free(data->phase2_eap_types);
 eap_peer_tls_ssl_deinit(sm, &data->ssl);
 eap_ttls_free_key(data);
 os_free(data->session_id);
 wpabuf_clear_free(data->pending_phase2_req);
 wpabuf_clear_free(data->pending_resp);
 os_free(data);
}
