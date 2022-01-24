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
 int /*<<< orphan*/  MSG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(void *ssl_ctx, const char *ca_cert)
{
	WOLFSSL_CTX *ctx = ssl_ctx;

	if (ca_cert) {
		if (FUNC0(ctx, ca_cert, NULL) != 1)
		{
			FUNC1(MSG_WARNING,
				   "Failed to load root certificates");
			return -1;
		}

		FUNC1(MSG_DEBUG,
			   "TLS: Trusted root certificate(s) loaded");
	}

	return 0;
}