#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ref; struct TYPE_4__* buf; int /*<<< orphan*/  sd; int /*<<< orphan*/ * ssl_cert; int /*<<< orphan*/ * ssl_ctx; int /*<<< orphan*/ * ssl; } ;
typedef  TYPE_1__ conn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int
FUNC7(conn_t *conn)
{
	int ret;

	if (--conn->ref > 0)
		return (0);
#ifdef WITH_SSL
	if (conn->ssl) {
		SSL_shutdown(conn->ssl);
		SSL_set_connect_state(conn->ssl);
		SSL_free(conn->ssl);
		conn->ssl = NULL;
	}
	if (conn->ssl_ctx) {
		SSL_CTX_free(conn->ssl_ctx);
		conn->ssl_ctx = NULL;
	}
	if (conn->ssl_cert) {
		X509_free(conn->ssl_cert);
		conn->ssl_cert = NULL;
	}
#endif
	ret = FUNC5(conn->sd);
	FUNC6(conn->buf);
	FUNC6(conn);
	return (ret);
}