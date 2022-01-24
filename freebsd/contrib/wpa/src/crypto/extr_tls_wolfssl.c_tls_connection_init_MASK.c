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
struct tls_connection {int /*<<< orphan*/  ssl; int /*<<< orphan*/  context; int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct tls_connection*) ; 
 struct tls_connection* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

struct tls_connection * FUNC11(void *tls_ctx)
{
	WOLFSSL_CTX *ssl_ctx = tls_ctx;
	struct tls_connection *conn;

	FUNC10(MSG_DEBUG, "SSL: connection init");

	conn = FUNC1(sizeof(*conn));
	if (!conn)
		return NULL;
	conn->ssl = FUNC8(ssl_ctx);
	if (!conn->ssl) {
		FUNC0(conn);
		return NULL;
	}

	FUNC5(conn->ssl,  &conn->input);
	FUNC6(conn->ssl, &conn->output);
	FUNC9(conn->ssl, 0, conn);
	conn->context = FUNC2(ssl_ctx, 0);

	/* Need randoms post-hanshake for EAP-FAST, export key and deriving
	 * session ID in EAP methods. */
	FUNC3(conn->ssl);
	FUNC4(conn->ssl);
	FUNC7(conn->ssl);

	return conn;
}