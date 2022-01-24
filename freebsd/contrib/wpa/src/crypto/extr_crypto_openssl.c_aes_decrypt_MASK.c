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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC4(void *ctx, const u8 *crypt, u8 *plain)
{
	EVP_CIPHER_CTX *c = ctx;
	int plen = 16;
	if (FUNC2(c, plain, &plen, crypt, 16) != 1) {
		FUNC3(MSG_ERROR, "OpenSSL: EVP_DecryptUpdate failed: %s",
			   FUNC0(FUNC1(), NULL));
		return -1;
	}
	return 0;
}