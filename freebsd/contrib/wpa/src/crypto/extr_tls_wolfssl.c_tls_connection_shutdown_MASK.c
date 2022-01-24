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
struct tls_connection {int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  WOLFSSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

int FUNC6(void *tls_ctx, struct tls_connection *conn)
{
	WOLFSSL_SESSION *session;

	if (!conn)
		return -1;

	FUNC5(MSG_DEBUG, "SSL: connection shutdown");

	/* Set quiet as OpenSSL does */
	FUNC2(conn->ssl, 1);
	FUNC4(conn->ssl);

	session = FUNC1(conn->ssl);
	if (FUNC0(conn->ssl) != 1)
		return -1;
	FUNC3(conn->ssl, session);

	return 0;
}