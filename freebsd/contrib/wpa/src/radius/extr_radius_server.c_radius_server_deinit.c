
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_server_data {scalar_t__ auth_sock; scalar_t__ acct_sock; scalar_t__ db; struct radius_server_data* t_c_server_url; struct radius_server_data* hs20_sim_provisioning_url; struct radius_server_data* subscr_remediation_url; struct radius_server_data* dump_msk_file; struct radius_server_data* eap_req_id_text; struct radius_server_data* eap_fast_a_id_info; struct radius_server_data* eap_fast_a_id; struct radius_server_data* pac_opaque_encr_key; int clients; } ;


 int close (scalar_t__) ;
 int eloop_unregister_read_sock (scalar_t__) ;
 int os_free (struct radius_server_data*) ;
 int radius_server_erp_flush (struct radius_server_data*) ;
 int radius_server_free_clients (struct radius_server_data*,int ) ;
 int sqlite3_close (scalar_t__) ;

void radius_server_deinit(struct radius_server_data *data)
{
 if (data == ((void*)0))
  return;

 if (data->auth_sock >= 0) {
  eloop_unregister_read_sock(data->auth_sock);
  close(data->auth_sock);
 }

 if (data->acct_sock >= 0) {
  eloop_unregister_read_sock(data->acct_sock);
  close(data->acct_sock);
 }

 radius_server_free_clients(data, data->clients);

 os_free(data->pac_opaque_encr_key);
 os_free(data->eap_fast_a_id);
 os_free(data->eap_fast_a_id_info);
 os_free(data->eap_req_id_text);



 os_free(data->subscr_remediation_url);
 os_free(data->hs20_sim_provisioning_url);
 os_free(data->t_c_server_url);






 radius_server_erp_flush(data);

 os_free(data);
}
