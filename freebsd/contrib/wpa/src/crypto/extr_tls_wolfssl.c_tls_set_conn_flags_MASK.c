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
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  SSL_OP_NO_TLSv1 ; 
 int /*<<< orphan*/  SSL_OP_NO_TLSv1_1 ; 
 int /*<<< orphan*/  SSL_OP_NO_TLSv1_2 ; 
 unsigned int TLS_CONN_DISABLE_SESSION_TICKET ; 
 unsigned int TLS_CONN_DISABLE_TLSv1_0 ; 
 unsigned int TLS_CONN_DISABLE_TLSv1_1 ; 
 unsigned int TLS_CONN_DISABLE_TLSv1_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(WOLFSSL *ssl, unsigned int flags)
{
#ifdef HAVE_SESSION_TICKET
#if 0
	if (!(flags & TLS_CONN_DISABLE_SESSION_TICKET))
		wolfSSL_UseSessionTicket(ssl);
#endif
#endif /* HAVE_SESSION_TICKET */

	if (flags & TLS_CONN_DISABLE_TLSv1_0)
		FUNC1(ssl, SSL_OP_NO_TLSv1);
	if (flags & TLS_CONN_DISABLE_TLSv1_1)
		FUNC1(ssl, SSL_OP_NO_TLSv1_1);
	if (flags & TLS_CONN_DISABLE_TLSv1_2)
		FUNC1(ssl, SSL_OP_NO_TLSv1_2);
}