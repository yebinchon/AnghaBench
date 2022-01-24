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
struct tls_connection {int /*<<< orphan*/  session; } ;
typedef  scalar_t__ gnutls_protocol_t ;

/* Variables and functions */
 scalar_t__ GNUTLS_TLS1_0 ; 
 scalar_t__ GNUTLS_TLS1_1 ; 
 scalar_t__ GNUTLS_TLS1_2 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

int FUNC2(void *ssl_ctx, struct tls_connection *conn,
		    char *buf, size_t buflen)
{
	gnutls_protocol_t ver;

	ver = FUNC0(conn->session);
	if (ver == GNUTLS_TLS1_0)
		FUNC1(buf, "TLSv1", buflen);
	else if (ver == GNUTLS_TLS1_1)
		FUNC1(buf, "TLSv1.1", buflen);
	else if (ver == GNUTLS_TLS1_2)
		FUNC1(buf, "TLSv1.2", buflen);
	else
		return -1;
	return 0;
}