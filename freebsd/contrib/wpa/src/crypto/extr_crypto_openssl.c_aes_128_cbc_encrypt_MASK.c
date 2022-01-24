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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 

int FUNC8(const u8 *key, const u8 *iv, u8 *data, size_t data_len)
{
	EVP_CIPHER_CTX *ctx;
	int clen, len;
	u8 buf[16];
	int res = -1;

	if (FUNC7())
		return -1;

	ctx = FUNC1();
	if (!ctx)
		return -1;
	clen = data_len;
	len = sizeof(buf);
	if (FUNC4(ctx, FUNC6(), NULL, key, iv) == 1 &&
	    FUNC2(ctx, 0) == 1 &&
	    FUNC5(ctx, data, &clen, data, data_len) == 1 &&
	    clen == (int) data_len &&
	    FUNC3(ctx, buf, &len) == 1 && len == 0)
		res = 0;
	FUNC0(ctx);

	return res;
}