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
struct eap_ssl_data {int tls_v13; int /*<<< orphan*/  conn; int /*<<< orphan*/ * tls_out; int /*<<< orphan*/  tls_in; } ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; scalar_t__ serial_num; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct eap_sm *sm, struct eap_ssl_data *data)
{
	char buf[20];

	if (data->tls_out) {
		/* This should not happen.. */
		FUNC7(MSG_INFO, "SSL: pending tls_out data when "
			   "processing new message");
		FUNC8(data->tls_out);
		FUNC0(data->tls_out == NULL);
	}

	data->tls_out = FUNC5(sm->ssl_ctx,
							data->conn,
							data->tls_in, NULL);
	if (data->tls_out == NULL) {
		FUNC7(MSG_INFO, "SSL: TLS processing failed");
		return -1;
	}
	if (FUNC3(sm->ssl_ctx, data->conn)) {
		/* TLS processing has failed - return error */
		FUNC7(MSG_DEBUG, "SSL: Failed - tls_out available to "
			   "report error");
		return -1;
	}

	if (FUNC6(sm->ssl_ctx, data->conn, buf, sizeof(buf)) == 0) {
		FUNC7(MSG_DEBUG, "SSL: Using TLS version %s", buf);
		data->tls_v13 = FUNC1(buf, "TLSv1.3") == 0;
	}

	if (!sm->serial_num &&
	    FUNC2(sm->ssl_ctx, data->conn))
		sm->serial_num = FUNC4(sm->ssl_ctx,
								data->conn);

	return 0;
}