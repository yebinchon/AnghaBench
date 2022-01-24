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
struct tls_connection {struct tls_connection* domain_match; struct tls_connection* suffix_match; struct tls_connection* alt_subject_match; struct tls_connection* subject_match; int /*<<< orphan*/  ssl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(void *tls_ctx, struct tls_connection *conn)
{
	if (!conn)
		return;

	FUNC2(MSG_DEBUG, "SSL: connection deinit");

	/* parts */
	FUNC1(conn->ssl);
	FUNC0(conn->subject_match);
	FUNC0(conn->alt_subject_match);
	FUNC0(conn->suffix_match);
	FUNC0(conn->domain_match);

	/* self */
	FUNC0(conn);
}