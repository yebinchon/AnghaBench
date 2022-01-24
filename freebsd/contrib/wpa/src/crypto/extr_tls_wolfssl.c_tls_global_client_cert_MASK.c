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
 scalar_t__ SSL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(void *ssl_ctx, const char *client_cert)
{
	WOLFSSL_CTX *ctx = ssl_ctx;

	if (!client_cert)
		return 0;

	if (FUNC1(ctx, client_cert,
							  SSL_FILETYPE_ASN1) !=
	    SSL_SUCCESS &&
	    FUNC0(ctx, client_cert) !=
	    SSL_SUCCESS) {
		FUNC2(MSG_INFO, "Failed to load client certificate");
		return -1;
	}

	FUNC2(MSG_DEBUG, "SSL: Loaded global client certificate: %s",
		   client_cert);

	return 0;
}