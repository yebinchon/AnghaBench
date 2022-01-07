
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_teap_data {int simck_emsk; int simck_msk; int * peer_outer_tlvs; int * server_outer_tlvs; int * pending_resp; int * pending_phase2_req; int * session_id; int emsk; int key_data; } ;


 int EAP_EMSK_LEN ;
 int EAP_TEAP_KEY_LEN ;
 int EAP_TEAP_SIMCK_LEN ;
 int forced_memzero (int ,int ) ;
 int os_free (int *) ;
 int wpabuf_free (int *) ;

__attribute__((used)) static void eap_teap_clear(struct eap_teap_data *data)
{
 forced_memzero(data->key_data, EAP_TEAP_KEY_LEN);
 forced_memzero(data->emsk, EAP_EMSK_LEN);
 os_free(data->session_id);
 data->session_id = ((void*)0);
 wpabuf_free(data->pending_phase2_req);
 data->pending_phase2_req = ((void*)0);
 wpabuf_free(data->pending_resp);
 data->pending_resp = ((void*)0);
 wpabuf_free(data->server_outer_tlvs);
 data->server_outer_tlvs = ((void*)0);
 wpabuf_free(data->peer_outer_tlvs);
 data->peer_outer_tlvs = ((void*)0);
 forced_memzero(data->simck_msk, EAP_TEAP_SIMCK_LEN);
 forced_memzero(data->simck_emsk, EAP_TEAP_SIMCK_LEN);
}
