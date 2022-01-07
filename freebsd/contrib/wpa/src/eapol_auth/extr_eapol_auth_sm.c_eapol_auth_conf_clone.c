
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_auth_config {int eap_req_id_text_len; int eap_fast_a_id_len; int tls_flags; int tls_session_lifetime; int erp; int erp_send_reauth_start; int * erp_domain; int fragment_size; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; int * eap_fast_a_id_info; int * eap_fast_a_id; int * pac_opaque_encr_key; int * eap_req_id_text; int server_id_len; int server_id; int pbc_in_m1; int pwd_group; int eap_sim_db_priv; int msg_ctx; int ssl_ctx; int eap_server; int individual_wep_key_len; int wpa; int eap_reauth_period; int ctx; } ;


 int eapol_auth_conf_free (struct eapol_auth_config*) ;
 int os_free (int *) ;
 void* os_memdup (int *,int) ;
 void* os_strdup (int *) ;

__attribute__((used)) static int eapol_auth_conf_clone(struct eapol_auth_config *dst,
     struct eapol_auth_config *src)
{
 dst->ctx = src->ctx;
 dst->eap_reauth_period = src->eap_reauth_period;
 dst->wpa = src->wpa;
 dst->individual_wep_key_len = src->individual_wep_key_len;
 dst->eap_server = src->eap_server;
 dst->ssl_ctx = src->ssl_ctx;
 dst->msg_ctx = src->msg_ctx;
 dst->eap_sim_db_priv = src->eap_sim_db_priv;
 os_free(dst->eap_req_id_text);
 dst->pwd_group = src->pwd_group;
 dst->pbc_in_m1 = src->pbc_in_m1;
 dst->server_id = src->server_id;
 dst->server_id_len = src->server_id_len;
 if (src->eap_req_id_text) {
  dst->eap_req_id_text = os_memdup(src->eap_req_id_text,
       src->eap_req_id_text_len);
  if (dst->eap_req_id_text == ((void*)0))
   return -1;
  dst->eap_req_id_text_len = src->eap_req_id_text_len;
 } else {
  dst->eap_req_id_text = ((void*)0);
  dst->eap_req_id_text_len = 0;
 }
 if (src->pac_opaque_encr_key) {
  dst->pac_opaque_encr_key = os_memdup(src->pac_opaque_encr_key,
           16);
  if (dst->pac_opaque_encr_key == ((void*)0))
   goto fail;
 } else
  dst->pac_opaque_encr_key = ((void*)0);
 if (src->eap_fast_a_id) {
  dst->eap_fast_a_id = os_memdup(src->eap_fast_a_id,
            src->eap_fast_a_id_len);
  if (dst->eap_fast_a_id == ((void*)0))
   goto fail;
  dst->eap_fast_a_id_len = src->eap_fast_a_id_len;
 } else
  dst->eap_fast_a_id = ((void*)0);
 if (src->eap_fast_a_id_info) {
  dst->eap_fast_a_id_info = os_strdup(src->eap_fast_a_id_info);
  if (dst->eap_fast_a_id_info == ((void*)0))
   goto fail;
 } else
  dst->eap_fast_a_id_info = ((void*)0);
 dst->eap_fast_prov = src->eap_fast_prov;
 dst->pac_key_lifetime = src->pac_key_lifetime;
 dst->pac_key_refresh_time = src->pac_key_refresh_time;
 dst->eap_teap_auth = src->eap_teap_auth;
 dst->eap_teap_pac_no_inner = src->eap_teap_pac_no_inner;
 dst->eap_sim_aka_result_ind = src->eap_sim_aka_result_ind;
 dst->eap_sim_id = src->eap_sim_id;
 dst->tnc = src->tnc;
 dst->wps = src->wps;
 dst->fragment_size = src->fragment_size;

 os_free(dst->erp_domain);
 if (src->erp_domain) {
  dst->erp_domain = os_strdup(src->erp_domain);
  if (dst->erp_domain == ((void*)0))
   goto fail;
 } else {
  dst->erp_domain = ((void*)0);
 }
 dst->erp_send_reauth_start = src->erp_send_reauth_start;
 dst->erp = src->erp;
 dst->tls_session_lifetime = src->tls_session_lifetime;
 dst->tls_flags = src->tls_flags;

 return 0;

fail:
 eapol_auth_conf_free(dst);
 return -1;
}
