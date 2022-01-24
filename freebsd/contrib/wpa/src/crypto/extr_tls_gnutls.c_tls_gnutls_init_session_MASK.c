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
struct tls_global {scalar_t__ server; } ;
struct tls_connection {int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  gnutls_transport_ptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_CLIENT ; 
 int /*<<< orphan*/  GNUTLS_SERVER ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct tls_connection*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tls_pull_func ; 
 int /*<<< orphan*/  tls_push_func ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC10(struct tls_global *global,
				   struct tls_connection *conn)
{
	const char *err;
	int ret;

	ret = FUNC1(&conn->session,
			  global->server ? GNUTLS_SERVER : GNUTLS_CLIENT);
	if (ret < 0) {
		FUNC9(MSG_INFO, "TLS: Failed to initialize new TLS "
			   "connection: %s", FUNC5(ret));
		return -1;
	}

	ret = FUNC4(conn->session);
	if (ret < 0)
		goto fail;

	ret = FUNC2(conn->session, "NORMAL:-VERS-SSL3.0",
					 &err);
	if (ret < 0) {
		FUNC9(MSG_ERROR, "GnuTLS: Priority string failure at "
			   "'%s'", err);
		goto fail;
	}

	FUNC7(conn->session, tls_pull_func);
	FUNC8(conn->session, tls_push_func);
	FUNC6(conn->session, (gnutls_transport_ptr_t) conn);
	FUNC3(conn->session, conn);

	return 0;

fail:
	FUNC9(MSG_INFO, "TLS: Failed to setup new TLS connection: %s",
		   FUNC5(ret));
	FUNC0(conn->session);
	return -1;
}