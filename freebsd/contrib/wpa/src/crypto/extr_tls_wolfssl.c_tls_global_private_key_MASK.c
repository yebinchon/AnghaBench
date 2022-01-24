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
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SSL_FILETYPE_ASN1 ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/ * tls_passwd_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(void *ssl_ctx, const char *private_key,
				  const char *private_key_passwd)
{
	WOLFSSL_CTX *ctx = ssl_ctx;
	char *passwd = NULL;
	int ret = 0;

	if (!private_key)
		return 0;

	if (private_key_passwd) {
		passwd = FUNC1(private_key_passwd);
		if (!passwd)
			return -1;
	}

	FUNC2(ctx, tls_passwd_cb);
	FUNC3(ctx, passwd);

	if (FUNC4(ctx, private_key,
					    SSL_FILETYPE_ASN1) != 1 &&
	    FUNC4(ctx, private_key,
					    SSL_FILETYPE_PEM) != 1) {
		FUNC5(MSG_INFO, "Failed to load private key");
		ret = -1;
	}

	FUNC5(MSG_DEBUG, "SSL: Loaded global private key");

	FUNC0(passwd);
	FUNC2(ctx, NULL);

	return ret;
}