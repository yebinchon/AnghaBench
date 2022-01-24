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
struct tls_global {int /*<<< orphan*/  xcred; scalar_t__ params_set; } ;
struct tls_connection {int /*<<< orphan*/  xcred; int /*<<< orphan*/  session; struct tls_global* global; } ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_CRD_CERTIFICATE ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tls_connection*) ; 
 struct tls_connection* FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct tls_global*,struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct tls_connection * FUNC7(void *ssl_ctx)
{
	struct tls_global *global = ssl_ctx;
	struct tls_connection *conn;
	int ret;

	conn = FUNC4(sizeof(*conn));
	if (conn == NULL)
		return NULL;
	conn->global = global;

	if (FUNC5(global, conn)) {
		FUNC3(conn);
		return NULL;
	}

	if (global->params_set) {
		ret = FUNC1(conn->session,
					     GNUTLS_CRD_CERTIFICATE,
					     global->xcred);
		if (ret < 0) {
			FUNC6(MSG_INFO, "Failed to configure "
				   "credentials: %s", FUNC2(ret));
			FUNC3(conn);
			return NULL;
		}
	}

	if (FUNC0(&conn->xcred)) {
		FUNC3(conn);
		return NULL;
	}

	return conn;
}