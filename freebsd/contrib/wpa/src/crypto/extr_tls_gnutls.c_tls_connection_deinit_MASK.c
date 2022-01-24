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
struct tls_connection {struct tls_connection* domain_match; struct tls_connection* suffix_match; int /*<<< orphan*/  pull_buf; int /*<<< orphan*/  push_buf; struct tls_connection* pre_shared_secret; int /*<<< orphan*/  session; int /*<<< orphan*/  xcred; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(void *ssl_ctx, struct tls_connection *conn)
{
	if (conn == NULL)
		return;

	FUNC0(conn->xcred);
	FUNC1(conn->session);
	FUNC2(conn->pre_shared_secret);
	FUNC3(conn->push_buf);
	FUNC3(conn->pull_buf);
	FUNC2(conn->suffix_match);
	FUNC2(conn->domain_match);
	FUNC2(conn);
}