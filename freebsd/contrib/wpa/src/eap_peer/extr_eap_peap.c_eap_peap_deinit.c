
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct eap_peap_data {int pending_resp; int pending_phase2_req; int session_id; int ssl; int phase2_types; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int (* deinit ) (struct eap_sm*,scalar_t__) ;} ;


 int bin_clear_free (struct eap_peap_data*,int) ;
 int eap_peap_free_key (struct eap_peap_data*) ;
 int eap_peer_tls_ssl_deinit (struct eap_sm*,int *) ;
 int os_free (int ) ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_clear_free (int ) ;

__attribute__((used)) static void eap_peap_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_peap_data *data = priv;
 if (data == ((void*)0))
  return;
 if (data->phase2_priv && data->phase2_method)
  data->phase2_method->deinit(sm, data->phase2_priv);
 os_free(data->phase2_types);
 eap_peer_tls_ssl_deinit(sm, &data->ssl);
 eap_peap_free_key(data);
 os_free(data->session_id);
 wpabuf_clear_free(data->pending_phase2_req);
 wpabuf_clear_free(data->pending_resp);
 bin_clear_free(data, sizeof(*data));
}
