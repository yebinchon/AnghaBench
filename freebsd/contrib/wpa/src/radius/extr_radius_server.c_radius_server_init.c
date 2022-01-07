
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_server_data {int auth_sock; int acct_sock; int eap_fast_a_id_len; int eap_req_id_text_len; int * clients; void* dump_msk_file; int db; void* t_c_server_url; void* hs20_sim_provisioning_url; int subscr_remediation_method; void* subscr_remediation_url; int tls_flags; int tls_session_lifetime; int erp_domain; int erp; void* eap_req_id_text; int server_id; int pwd_group; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int get_eap_user; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; void* eap_fast_a_id_info; void* eap_fast_a_id; void* pac_opaque_encr_key; scalar_t__ ipv6; int msg_ctx; int ssl_ctx; int eap_sim_db_priv; int conf_ctx; int start_time; int erp_keys; } ;
struct radius_server_conf {int eap_fast_a_id_len; int eap_req_id_text_len; scalar_t__ acct_port; scalar_t__ ipv6; scalar_t__ auth_port; int client_file; scalar_t__ dump_msk_file; scalar_t__ sqlite_file; scalar_t__ t_c_server_url; scalar_t__ hs20_sim_provisioning_url; int subscr_remediation_method; scalar_t__ subscr_remediation_url; int tls_flags; int tls_session_lifetime; int erp_domain; int erp; int eap_req_id_text; int server_id; int pwd_group; int wps; int tnc; int eap_sim_id; int eap_sim_aka_result_ind; int get_eap_user; int eap_teap_pac_no_inner; int eap_teap_auth; int pac_key_refresh_time; int pac_key_lifetime; int eap_fast_prov; scalar_t__ eap_fast_a_id_info; int eap_fast_a_id; int pac_opaque_encr_key; int msg_ctx; int ssl_ctx; int eap_sim_db_priv; int conf_ctx; } ;


 int MSG_ERROR ;
 int RADIUS_ERROR (char*,scalar_t__) ;
 int dl_list_init (int *) ;
 scalar_t__ eloop_register_read_sock (int,int ,struct radius_server_data*,int *) ;
 int os_get_reltime (int *) ;
 void* os_malloc (int) ;
 int os_memcpy (void*,int ,int) ;
 void* os_strdup (scalar_t__) ;
 struct radius_server_data* os_zalloc (int) ;
 int radius_server_deinit (struct radius_server_data*) ;
 void* radius_server_open_socket (scalar_t__) ;
 void* radius_server_open_socket6 (scalar_t__) ;
 int * radius_server_read_clients (int ,scalar_t__) ;
 int radius_server_receive_acct ;
 int radius_server_receive_auth ;
 scalar_t__ sqlite3_open (scalar_t__,int *) ;
 int wpa_printf (int ,char*) ;

struct radius_server_data *
radius_server_init(struct radius_server_conf *conf)
{
 struct radius_server_data *data;


 if (conf->ipv6) {
  wpa_printf(MSG_ERROR, "RADIUS server compiled without IPv6 support");
  return ((void*)0);
 }


 data = os_zalloc(sizeof(*data));
 if (data == ((void*)0))
  return ((void*)0);

 data->auth_sock = -1;
 data->acct_sock = -1;
 dl_list_init(&data->erp_keys);
 os_get_reltime(&data->start_time);
 data->conf_ctx = conf->conf_ctx;
 data->eap_sim_db_priv = conf->eap_sim_db_priv;
 data->ssl_ctx = conf->ssl_ctx;
 data->msg_ctx = conf->msg_ctx;
 data->ipv6 = conf->ipv6;
 if (conf->pac_opaque_encr_key) {
  data->pac_opaque_encr_key = os_malloc(16);
  if (data->pac_opaque_encr_key) {
   os_memcpy(data->pac_opaque_encr_key,
      conf->pac_opaque_encr_key, 16);
  }
 }
 if (conf->eap_fast_a_id) {
  data->eap_fast_a_id = os_malloc(conf->eap_fast_a_id_len);
  if (data->eap_fast_a_id) {
   os_memcpy(data->eap_fast_a_id, conf->eap_fast_a_id,
      conf->eap_fast_a_id_len);
   data->eap_fast_a_id_len = conf->eap_fast_a_id_len;
  }
 }
 if (conf->eap_fast_a_id_info)
  data->eap_fast_a_id_info = os_strdup(conf->eap_fast_a_id_info);
 data->eap_fast_prov = conf->eap_fast_prov;
 data->pac_key_lifetime = conf->pac_key_lifetime;
 data->pac_key_refresh_time = conf->pac_key_refresh_time;
 data->eap_teap_auth = conf->eap_teap_auth;
 data->eap_teap_pac_no_inner = conf->eap_teap_pac_no_inner;
 data->get_eap_user = conf->get_eap_user;
 data->eap_sim_aka_result_ind = conf->eap_sim_aka_result_ind;
 data->eap_sim_id = conf->eap_sim_id;
 data->tnc = conf->tnc;
 data->wps = conf->wps;
 data->pwd_group = conf->pwd_group;
 data->server_id = conf->server_id;
 if (conf->eap_req_id_text) {
  data->eap_req_id_text = os_malloc(conf->eap_req_id_text_len);
  if (data->eap_req_id_text) {
   os_memcpy(data->eap_req_id_text, conf->eap_req_id_text,
      conf->eap_req_id_text_len);
   data->eap_req_id_text_len = conf->eap_req_id_text_len;
  }
 }
 data->erp = conf->erp;
 data->erp_domain = conf->erp_domain;
 data->tls_session_lifetime = conf->tls_session_lifetime;
 data->tls_flags = conf->tls_flags;

 if (conf->subscr_remediation_url) {
  data->subscr_remediation_url =
   os_strdup(conf->subscr_remediation_url);
 }
 data->subscr_remediation_method = conf->subscr_remediation_method;
 if (conf->hs20_sim_provisioning_url)
  data->hs20_sim_provisioning_url =
   os_strdup(conf->hs20_sim_provisioning_url);

 if (conf->t_c_server_url)
  data->t_c_server_url = os_strdup(conf->t_c_server_url);
 data->clients = radius_server_read_clients(conf->client_file,
         conf->ipv6);
 if (data->clients == ((void*)0)) {
  wpa_printf(MSG_ERROR, "No RADIUS clients configured");
  radius_server_deinit(data);
  return ((void*)0);
 }






 data->auth_sock = radius_server_open_socket(conf->auth_port);
 if (data->auth_sock < 0) {
  wpa_printf(MSG_ERROR, "Failed to open UDP socket for RADIUS authentication server");
  radius_server_deinit(data);
  return ((void*)0);
 }
 if (eloop_register_read_sock(data->auth_sock,
         radius_server_receive_auth,
         data, ((void*)0))) {
  radius_server_deinit(data);
  return ((void*)0);
 }

 if (conf->acct_port) {






  data->acct_sock = radius_server_open_socket(conf->acct_port);
  if (data->acct_sock < 0) {
   wpa_printf(MSG_ERROR, "Failed to open UDP socket for RADIUS accounting server");
   radius_server_deinit(data);
   return ((void*)0);
  }
  if (eloop_register_read_sock(data->acct_sock,
          radius_server_receive_acct,
          data, ((void*)0))) {
   radius_server_deinit(data);
   return ((void*)0);
  }
 } else {
  data->acct_sock = -1;
 }

 return data;
}
