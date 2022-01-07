
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct eap_fast_data {int identity; int pending_phase2_resp; int key_block_p; int srv_id_info; int srv_id; int ssl; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int (* reset ) (struct eap_sm*,scalar_t__) ;} ;


 int bin_clear_free (struct eap_fast_data*,int) ;
 int eap_server_tls_ssl_deinit (struct eap_sm*,int *) ;
 int os_free (int ) ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_fast_reset(struct eap_sm *sm, void *priv)
{
 struct eap_fast_data *data = priv;
 if (data == ((void*)0))
  return;
 if (data->phase2_priv && data->phase2_method)
  data->phase2_method->reset(sm, data->phase2_priv);
 eap_server_tls_ssl_deinit(sm, &data->ssl);
 os_free(data->srv_id);
 os_free(data->srv_id_info);
 os_free(data->key_block_p);
 wpabuf_free(data->pending_phase2_resp);
 os_free(data->identity);
 bin_clear_free(data, sizeof(*data));
}
