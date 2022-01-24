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
typedef  unsigned char u8 ;
typedef  int /*<<< orphan*/  skip_buf ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

int FUNC7(const u8 *key, size_t keylen, size_t skip,
	     u8 *data, size_t data_len)
{
#ifdef OPENSSL_NO_RC4
	return -1;
#else /* OPENSSL_NO_RC4 */
	EVP_CIPHER_CTX *ctx;
	int outl;
	int res = -1;
	unsigned char skip_buf[16];

	ctx = FUNC1();
	if (!ctx ||
	    !FUNC3(ctx, 0) ||
	    !FUNC4(ctx, FUNC6(), NULL, NULL, NULL, 1) ||
	    !FUNC2(ctx, keylen) ||
	    !FUNC4(ctx, NULL, NULL, key, NULL, 1))
		goto out;

	while (skip >= sizeof(skip_buf)) {
		size_t len = skip;
		if (len > sizeof(skip_buf))
			len = sizeof(skip_buf);
		if (!FUNC5(ctx, skip_buf, &outl, skip_buf, len))
			goto out;
		skip -= len;
	}

	if (FUNC5(ctx, data, &outl, data, data_len))
		res = 0;

out:
	if (ctx)
		FUNC0(ctx);
	return res;
#endif /* OPENSSL_NO_RC4 */
}