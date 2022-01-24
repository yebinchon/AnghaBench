#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radius_server_data {int auth_sock; int acct_sock; int eap_fast_a_id_len; int eap_req_id_text_len; int /*<<< orphan*/ * clients; void* dump_msk_file; int /*<<< orphan*/  db; void* t_c_server_url; void* hs20_sim_provisioning_url; int /*<<< orphan*/  subscr_remediation_method; void* subscr_remediation_url; int /*<<< orphan*/  tls_flags; int /*<<< orphan*/  tls_session_lifetime; int /*<<< orphan*/  erp_domain; int /*<<< orphan*/  erp; void* eap_req_id_text; int /*<<< orphan*/  server_id; int /*<<< orphan*/  pwd_group; int /*<<< orphan*/  wps; int /*<<< orphan*/  tnc; int /*<<< orphan*/  eap_sim_id; int /*<<< orphan*/  eap_sim_aka_result_ind; int /*<<< orphan*/  get_eap_user; int /*<<< orphan*/  eap_teap_pac_no_inner; int /*<<< orphan*/  eap_teap_auth; int /*<<< orphan*/  pac_key_refresh_time; int /*<<< orphan*/  pac_key_lifetime; int /*<<< orphan*/  eap_fast_prov; void* eap_fast_a_id_info; void* eap_fast_a_id; void* pac_opaque_encr_key; scalar_t__ ipv6; int /*<<< orphan*/  msg_ctx; int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  eap_sim_db_priv; int /*<<< orphan*/  conf_ctx; int /*<<< orphan*/  start_time; int /*<<< orphan*/  erp_keys; } ;
struct radius_server_conf {int eap_fast_a_id_len; int eap_req_id_text_len; scalar_t__ acct_port; scalar_t__ ipv6; scalar_t__ auth_port; int /*<<< orphan*/  client_file; scalar_t__ dump_msk_file; scalar_t__ sqlite_file; scalar_t__ t_c_server_url; scalar_t__ hs20_sim_provisioning_url; int /*<<< orphan*/  subscr_remediation_method; scalar_t__ subscr_remediation_url; int /*<<< orphan*/  tls_flags; int /*<<< orphan*/  tls_session_lifetime; int /*<<< orphan*/  erp_domain; int /*<<< orphan*/  erp; int /*<<< orphan*/  eap_req_id_text; int /*<<< orphan*/  server_id; int /*<<< orphan*/  pwd_group; int /*<<< orphan*/  wps; int /*<<< orphan*/  tnc; int /*<<< orphan*/  eap_sim_id; int /*<<< orphan*/  eap_sim_aka_result_ind; int /*<<< orphan*/  get_eap_user; int /*<<< orphan*/  eap_teap_pac_no_inner; int /*<<< orphan*/  eap_teap_auth; int /*<<< orphan*/  pac_key_refresh_time; int /*<<< orphan*/  pac_key_lifetime; int /*<<< orphan*/  eap_fast_prov; scalar_t__ eap_fast_a_id_info; int /*<<< orphan*/  eap_fast_a_id; int /*<<< orphan*/  pac_opaque_encr_key; int /*<<< orphan*/  msg_ctx; int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  eap_sim_db_priv; int /*<<< orphan*/  conf_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct radius_server_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (scalar_t__) ; 
 struct radius_server_data* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct radius_server_data*) ; 
 void* FUNC9 (scalar_t__) ; 
 void* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  radius_server_receive_acct ; 
 int /*<<< orphan*/  radius_server_receive_auth ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

struct radius_server_data *
FUNC14(struct radius_server_conf *conf)
{
	struct radius_server_data *data;

#ifndef CONFIG_IPV6
	if (conf->ipv6) {
		FUNC13(MSG_ERROR, "RADIUS server compiled without IPv6 support");
		return NULL;
	}
#endif /* CONFIG_IPV6 */

	data = FUNC7(sizeof(*data));
	if (data == NULL)
		return NULL;

	data->auth_sock = -1;
	data->acct_sock = -1;
	FUNC1(&data->erp_keys);
	FUNC3(&data->start_time);
	data->conf_ctx = conf->conf_ctx;
	data->eap_sim_db_priv = conf->eap_sim_db_priv;
	data->ssl_ctx = conf->ssl_ctx;
	data->msg_ctx = conf->msg_ctx;
	data->ipv6 = conf->ipv6;
	if (conf->pac_opaque_encr_key) {
		data->pac_opaque_encr_key = FUNC4(16);
		if (data->pac_opaque_encr_key) {
			FUNC5(data->pac_opaque_encr_key,
				  conf->pac_opaque_encr_key, 16);
		}
	}
	if (conf->eap_fast_a_id) {
		data->eap_fast_a_id = FUNC4(conf->eap_fast_a_id_len);
		if (data->eap_fast_a_id) {
			FUNC5(data->eap_fast_a_id, conf->eap_fast_a_id,
				  conf->eap_fast_a_id_len);
			data->eap_fast_a_id_len = conf->eap_fast_a_id_len;
		}
	}
	if (conf->eap_fast_a_id_info)
		data->eap_fast_a_id_info = FUNC6(conf->eap_fast_a_id_info);
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
		data->eap_req_id_text = FUNC4(conf->eap_req_id_text_len);
		if (data->eap_req_id_text) {
			FUNC5(data->eap_req_id_text, conf->eap_req_id_text,
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
			FUNC6(conf->subscr_remediation_url);
	}
	data->subscr_remediation_method = conf->subscr_remediation_method;
	if (conf->hs20_sim_provisioning_url)
		data->hs20_sim_provisioning_url =
			FUNC6(conf->hs20_sim_provisioning_url);

	if (conf->t_c_server_url)
		data->t_c_server_url = FUNC6(conf->t_c_server_url);

#ifdef CONFIG_SQLITE
	if (conf->sqlite_file) {
		if (sqlite3_open(conf->sqlite_file, &data->db)) {
			RADIUS_ERROR("Could not open SQLite file '%s'",
				     conf->sqlite_file);
			radius_server_deinit(data);
			return NULL;
		}
	}
#endif /* CONFIG_SQLITE */

#ifdef CONFIG_RADIUS_TEST
	if (conf->dump_msk_file)
		data->dump_msk_file = os_strdup(conf->dump_msk_file);
#endif /* CONFIG_RADIUS_TEST */

	data->clients = FUNC11(conf->client_file,
						   conf->ipv6);
	if (data->clients == NULL) {
		FUNC13(MSG_ERROR, "No RADIUS clients configured");
		FUNC8(data);
		return NULL;
	}

#ifdef CONFIG_IPV6
	if (conf->ipv6)
		data->auth_sock = radius_server_open_socket6(conf->auth_port);
	else
#endif /* CONFIG_IPV6 */
	data->auth_sock = FUNC9(conf->auth_port);
	if (data->auth_sock < 0) {
		FUNC13(MSG_ERROR, "Failed to open UDP socket for RADIUS authentication server");
		FUNC8(data);
		return NULL;
	}
	if (FUNC2(data->auth_sock,
				     radius_server_receive_auth,
				     data, NULL)) {
		FUNC8(data);
		return NULL;
	}

	if (conf->acct_port) {
#ifdef CONFIG_IPV6
		if (conf->ipv6)
			data->acct_sock = radius_server_open_socket6(
				conf->acct_port);
		else
#endif /* CONFIG_IPV6 */
		data->acct_sock = FUNC9(conf->acct_port);
		if (data->acct_sock < 0) {
			FUNC13(MSG_ERROR, "Failed to open UDP socket for RADIUS accounting server");
			FUNC8(data);
			return NULL;
		}
		if (FUNC2(data->acct_sock,
					     radius_server_receive_acct,
					     data, NULL)) {
			FUNC8(data);
			return NULL;
		}
	} else {
		data->acct_sock = -1;
	}

	return data;
}