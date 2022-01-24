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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(SSL_CTX *ssl_ctx)
{
	SSL *ssl;
	int i;

	ssl = FUNC2(ssl_ctx);
	if (!ssl)
		return;

	FUNC3(MSG_DEBUG,
		   "OpenSSL: Enabled cipher suites in priority order");
	for (i = 0; ; i++) {
		const char *cipher;

		cipher = FUNC1(ssl, i);
		if (!cipher)
			break;
		FUNC3(MSG_DEBUG, "Cipher %d: %s", i, cipher);
	}

	FUNC0(ssl);
}