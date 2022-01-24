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
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  SSL_CERT_SET_FIRST ; 
 int /*<<< orphan*/  SSL_CERT_SET_NEXT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(SSL_CTX *ssl_ctx)
{
#if !defined(LIBRESSL_VERSION_NUMBER) && !defined(BORINGSSL_API_VERSION)
	int res;

	for (res = FUNC0(ssl_ctx, SSL_CERT_SET_FIRST);
	     res == 1;
	     res = FUNC0(ssl_ctx, SSL_CERT_SET_NEXT))
		FUNC1(ssl_ctx);

	FUNC0(ssl_ctx, SSL_CERT_SET_FIRST);
#endif
}