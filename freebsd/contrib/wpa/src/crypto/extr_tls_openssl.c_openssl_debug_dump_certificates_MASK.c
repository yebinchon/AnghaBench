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
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509 ; 
 int certs ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(SSL_CTX *ssl_ctx)
{
	FUNC2(X509) *certs;

	FUNC6(MSG_DEBUG, "OpenSSL: Configured certificate chain");
	if (FUNC1(ssl_ctx, &certs) == 1) {
		int i;

		for (i = FUNC4(certs); i > 0; i--)
			FUNC3(i, FUNC5(certs,
									i - 1));
	}
	FUNC3(0, FUNC0(ssl_ctx));
}