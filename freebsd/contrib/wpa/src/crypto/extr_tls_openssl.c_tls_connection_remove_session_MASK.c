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
struct tls_connection {int /*<<< orphan*/  ssl_ctx; int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  SSL_SESSION ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct tls_connection *conn)
{
	SSL_SESSION *sess;

	sess = FUNC1(conn->ssl);
	if (!sess)
		return;

	if (FUNC0(conn->ssl_ctx, sess) != 1)
		FUNC2(MSG_DEBUG,
			   "OpenSSL: Session was not cached");
	else
		FUNC2(MSG_DEBUG,
			   "OpenSSL: Removed cached session to disable session resumption");
}