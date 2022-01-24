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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void *ssl_ctx, struct tls_connection *conn)
{
	if (conn == NULL)
		return -1;

	/* Shutdown previous TLS connection without notifying the peer
	 * because the connection was already terminated in practice
	 * and "close notify" shutdown alert would confuse AS. */
	FUNC1(conn->ssl, 1);
	FUNC2(conn->ssl);
	return FUNC0(conn->ssl) == 1 ? 0 : -1;
}