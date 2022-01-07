
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_ttls_data {int pending_phase2_eap_resp; int ssl; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct eap_sm*,scalar_t__) ;} ;


 int bin_clear_free (struct eap_ttls_data*,int) ;
 int eap_server_tls_ssl_deinit (struct eap_sm*,int *) ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_ttls_reset(struct eap_sm *sm, void *priv)
{
 struct eap_ttls_data *data = priv;
 if (data == ((void*)0))
  return;
 if (data->phase2_priv && data->phase2_method)
  data->phase2_method->reset(sm, data->phase2_priv);
 eap_server_tls_ssl_deinit(sm, &data->ssl);
 wpabuf_free(data->pending_phase2_eap_resp);
 bin_clear_free(data, sizeof(*data));
}
