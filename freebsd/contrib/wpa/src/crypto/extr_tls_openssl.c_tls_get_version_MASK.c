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
struct tls_connection {int /*<<< orphan*/ * ssl; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 

int FUNC2(void *ssl_ctx, struct tls_connection *conn,
		    char *buf, size_t buflen)
{
	const char *name;
	if (conn == NULL || conn->ssl == NULL)
		return -1;

	name = FUNC0(conn->ssl);
	if (name == NULL)
		return -1;

	FUNC1(buf, name, buflen);
	return 0;
}