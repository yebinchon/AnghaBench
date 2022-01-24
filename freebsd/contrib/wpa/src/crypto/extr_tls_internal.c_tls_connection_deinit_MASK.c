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
struct tls_connection {scalar_t__ server; scalar_t__ client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(void *tls_ctx, struct tls_connection *conn)
{
	if (conn == NULL)
		return;
#ifdef CONFIG_TLS_INTERNAL_CLIENT
	if (conn->client)
		tlsv1_client_deinit(conn->client);
#endif /* CONFIG_TLS_INTERNAL_CLIENT */
#ifdef CONFIG_TLS_INTERNAL_SERVER
	if (conn->server)
		tlsv1_server_deinit(conn->server);
#endif /* CONFIG_TLS_INTERNAL_SERVER */
	FUNC0(conn);
}