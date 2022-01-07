
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_teap_data {int pac_opaque_encr; int cmk_emsk; int cmk_msk; int simck_emsk; int simck_msk; int identity; int peer_outer_tlvs; int server_outer_tlvs; int pending_phase2_resp; int srv_id_info; int srv_id; int ssl; scalar_t__ phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct eap_sm*,scalar_t__) ;} ;


 int EAP_TEAP_CMK_LEN ;
 int EAP_TEAP_SIMCK_LEN ;
 int bin_clear_free (struct eap_teap_data*,int) ;
 int eap_server_tls_ssl_deinit (struct eap_sm*,int *) ;
 int forced_memzero (int ,int) ;
 int os_free (int ) ;
 int stub1 (struct eap_sm*,scalar_t__) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void eap_teap_reset(struct eap_sm *sm, void *priv)
{
 struct eap_teap_data *data = priv;

 if (!data)
  return;
 if (data->phase2_priv && data->phase2_method)
  data->phase2_method->reset(sm, data->phase2_priv);
 eap_server_tls_ssl_deinit(sm, &data->ssl);
 os_free(data->srv_id);
 os_free(data->srv_id_info);
 wpabuf_free(data->pending_phase2_resp);
 wpabuf_free(data->server_outer_tlvs);
 wpabuf_free(data->peer_outer_tlvs);
 os_free(data->identity);
 forced_memzero(data->simck_msk, EAP_TEAP_SIMCK_LEN);
 forced_memzero(data->simck_emsk, EAP_TEAP_SIMCK_LEN);
 forced_memzero(data->cmk_msk, EAP_TEAP_CMK_LEN);
 forced_memzero(data->cmk_emsk, EAP_TEAP_CMK_LEN);
 forced_memzero(data->pac_opaque_encr, sizeof(data->pac_opaque_encr));
 bin_clear_free(data, sizeof(*data));
}
