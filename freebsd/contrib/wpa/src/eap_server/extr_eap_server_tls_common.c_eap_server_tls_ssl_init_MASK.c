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
typedef  scalar_t__ u8 ;
struct eap_ssl_data {int tls_out_limit; scalar_t__ phase2; int /*<<< orphan*/ * conn; struct eap_sm* eap; } ;
struct eap_sm {unsigned int tls_flags; scalar_t__ fragment_size; int /*<<< orphan*/ * ssl_ctx; int /*<<< orphan*/  tls_test_flags; scalar_t__ init_phase2; } ;
typedef  int /*<<< orphan*/  session_ctx ;

/* Variables and functions */
 int EAP_TYPE_FAST ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 unsigned int TLS_CONN_DISABLE_SESSION_TICKET ; 
 int /*<<< orphan*/  eap_server_tls_log_cb ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,unsigned int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct eap_sm *sm, struct eap_ssl_data *data,
			    int verify_peer, int eap_type)
{
	u8 session_ctx[8];
	unsigned int flags = sm->tls_flags;

	if (sm->ssl_ctx == NULL) {
		FUNC6(MSG_ERROR, "TLS context not initialized - cannot use TLS-based EAP method");
		return -1;
	}

	data->eap = sm;
	data->phase2 = sm->init_phase2;

	data->conn = FUNC2(sm->ssl_ctx);
	if (data->conn == NULL) {
		FUNC6(MSG_INFO, "SSL: Failed to initialize new TLS "
			   "connection");
		return -1;
	}

#ifdef CONFIG_TLS_INTERNAL
	tls_connection_set_log_cb(data->conn, eap_server_tls_log_cb, sm);
#ifdef CONFIG_TESTING_OPTIONS
	tls_connection_set_test_flags(data->conn, sm->tls_test_flags);
#endif /* CONFIG_TESTING_OPTIONS */
#endif /* CONFIG_TLS_INTERNAL */

	if (eap_type != EAP_TYPE_FAST)
		flags |= TLS_CONN_DISABLE_SESSION_TICKET;
	FUNC0(session_ctx, "hostapd", 7);
	session_ctx[7] = (u8) eap_type;
	if (FUNC5(sm->ssl_ctx, data->conn, verify_peer,
				      flags, session_ctx,
				      sizeof(session_ctx))) {
		FUNC6(MSG_INFO, "SSL: Failed to configure verification "
			   "of TLS peer certificate");
		FUNC1(sm->ssl_ctx, data->conn);
		data->conn = NULL;
		return -1;
	}

	data->tls_out_limit = sm->fragment_size > 0 ? sm->fragment_size : 1398;
	if (data->phase2) {
		/* Limit the fragment size in the inner TLS authentication
		 * since the outer authentication with EAP-PEAP does not yet
		 * support fragmentation */
		if (data->tls_out_limit > 100)
			data->tls_out_limit -= 100;
	}
	return 0;
}