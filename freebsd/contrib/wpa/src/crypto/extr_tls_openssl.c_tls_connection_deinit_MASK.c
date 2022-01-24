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
struct tls_connection {struct tls_connection* session_ticket; struct tls_connection* check_cert_subject; struct tls_connection* domain_match; struct tls_connection* suffix_match; struct tls_connection* altsubject_match; struct tls_connection* subject_match; int /*<<< orphan*/  ssl; scalar_t__ success_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tls_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct tls_connection*) ; 

void FUNC5(void *ssl_ctx, struct tls_connection *conn)
{
	if (conn == NULL)
		return;
	if (conn->success_data) {
		/*
		 * Make sure ssl_clear_bad_session() does not remove this
		 * session.
		 */
		FUNC1(conn->ssl, 1);
		FUNC2(conn->ssl);
	}
	FUNC0(conn->ssl);
	FUNC4(conn);
	FUNC3(conn->subject_match);
	FUNC3(conn->altsubject_match);
	FUNC3(conn->suffix_match);
	FUNC3(conn->domain_match);
	FUNC3(conn->check_cert_subject);
	FUNC3(conn->session_ticket);
	FUNC3(conn);
}