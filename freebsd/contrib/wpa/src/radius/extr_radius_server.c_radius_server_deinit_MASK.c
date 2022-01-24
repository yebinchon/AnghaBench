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
struct radius_server_data {scalar_t__ auth_sock; scalar_t__ acct_sock; scalar_t__ db; struct radius_server_data* t_c_server_url; struct radius_server_data* hs20_sim_provisioning_url; struct radius_server_data* subscr_remediation_url; struct radius_server_data* dump_msk_file; struct radius_server_data* eap_req_id_text; struct radius_server_data* eap_fast_a_id_info; struct radius_server_data* eap_fast_a_id; struct radius_server_data* pac_opaque_encr_key; int /*<<< orphan*/  clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_server_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_server_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_server_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct radius_server_data *data)
{
	if (data == NULL)
		return;

	if (data->auth_sock >= 0) {
		FUNC1(data->auth_sock);
		FUNC0(data->auth_sock);
	}

	if (data->acct_sock >= 0) {
		FUNC1(data->acct_sock);
		FUNC0(data->acct_sock);
	}

	FUNC4(data, data->clients);

	FUNC2(data->pac_opaque_encr_key);
	FUNC2(data->eap_fast_a_id);
	FUNC2(data->eap_fast_a_id_info);
	FUNC2(data->eap_req_id_text);
#ifdef CONFIG_RADIUS_TEST
	os_free(data->dump_msk_file);
#endif /* CONFIG_RADIUS_TEST */
	FUNC2(data->subscr_remediation_url);
	FUNC2(data->hs20_sim_provisioning_url);
	FUNC2(data->t_c_server_url);

#ifdef CONFIG_SQLITE
	if (data->db)
		sqlite3_close(data->db);
#endif /* CONFIG_SQLITE */

	FUNC3(data);

	FUNC2(data);
}