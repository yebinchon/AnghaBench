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
struct tls_global {int /*<<< orphan*/  session_data_size; scalar_t__ session_data; int /*<<< orphan*/  xcred; } ;
struct tls_connection {int /*<<< orphan*/  session; int /*<<< orphan*/  xcred; scalar_t__ params_set; scalar_t__ established; int /*<<< orphan*/ * push_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_CRD_CERTIFICATE ; 
 int /*<<< orphan*/  GNUTLS_SHUT_RDWR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct tls_global*,struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(void *ssl_ctx, struct tls_connection *conn)
{
	struct tls_global *global = ssl_ctx;
	int ret;

	if (conn == NULL)
		return -1;

	/* Shutdown previous TLS connection without notifying the peer
	 * because the connection was already terminated in practice
	 * and "close notify" shutdown alert would confuse AS. */
	FUNC0(conn->session, GNUTLS_SHUT_RDWR);
	FUNC7(conn->push_buf);
	conn->push_buf = NULL;
	conn->established = 0;

	FUNC2(conn->session);
	if (FUNC5(global, conn)) {
		FUNC6(MSG_INFO, "GnuTLS: Failed to preparare new session "
			   "for session resumption use");
		return -1;
	}

	ret = FUNC1(conn->session, GNUTLS_CRD_CERTIFICATE,
				     conn->params_set ? conn->xcred :
				     global->xcred);
	if (ret < 0) {
		FUNC6(MSG_INFO, "GnuTLS: Failed to configure credentials "
			   "for session resumption: %s", FUNC4(ret));
		return -1;
	}

	if (global->session_data) {
		ret = FUNC3(conn->session,
					      global->session_data,
					      global->session_data_size);
		if (ret < 0) {
			FUNC6(MSG_INFO, "GnuTLS: Failed to set session "
				   "data: %s", FUNC4(ret));
			return -1;
		}
	}

	return 0;
}