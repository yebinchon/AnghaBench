
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int dummy; } ;
struct eap_fast_pac {struct eap_fast_pac* next; } ;
struct eap_fast_data {int pending_resp; int pending_phase2_req; struct eap_fast_data* session_id; int emsk; int key_data; struct eap_fast_pac* pac; int ssl; struct eap_fast_data* key_block_p; struct eap_fast_data* phase2_types; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct TYPE_2__ {int (* deinit ) (struct eap_sm*,scalar_t__) ;} ;


 int EAP_EMSK_LEN ;
 int EAP_FAST_KEY_LEN ;
 int eap_fast_free_pac (struct eap_fast_pac*) ;
 int eap_peer_tls_ssl_deinit (struct eap_sm*,int *) ;
 int os_free (struct eap_fast_data*) ;
 int os_memset (int ,int ,int ) ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_clear_free (int ) ;

__attribute__((used)) static void eap_fast_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_fast_data *data = priv;
 struct eap_fast_pac *pac, *prev;

 if (data == ((void*)0))
  return;
 if (data->phase2_priv && data->phase2_method)
  data->phase2_method->deinit(sm, data->phase2_priv);
 os_free(data->phase2_types);
 os_free(data->key_block_p);
 eap_peer_tls_ssl_deinit(sm, &data->ssl);

 pac = data->pac;
 prev = ((void*)0);
 while (pac) {
  prev = pac;
  pac = pac->next;
  eap_fast_free_pac(prev);
 }
 os_memset(data->key_data, 0, EAP_FAST_KEY_LEN);
 os_memset(data->emsk, 0, EAP_EMSK_LEN);
 os_free(data->session_id);
 wpabuf_clear_free(data->pending_phase2_req);
 wpabuf_clear_free(data->pending_resp);
 os_free(data);
}
