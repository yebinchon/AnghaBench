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

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC2(void *tls_ctx, int check_crl, int strict)
{
	FUNC1(MSG_DEBUG, "SSL: global set verify: %d", check_crl);

	if (check_crl) {
		/* Hack to Enable CRLs. */
		FUNC0(tls_ctx, NULL, 0, SSL_FILETYPE_PEM);
	}

	return 0;
}