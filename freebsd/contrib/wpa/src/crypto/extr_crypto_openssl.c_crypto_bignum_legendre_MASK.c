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
struct crypto_bignum {int dummy; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ,int) ; 
 int FUNC12 (unsigned int,int,int) ; 

int FUNC13(const struct crypto_bignum *a,
			   const struct crypto_bignum *p)
{
	BN_CTX *bnctx;
	BIGNUM *exp = NULL, *tmp = NULL;
	int res = -2;
	unsigned int mask;

	if (FUNC10())
		return -2;

	bnctx = FUNC1();
	if (bnctx == NULL)
		return -2;

	exp = FUNC6();
	tmp = FUNC6();
	if (!exp || !tmp ||
	    /* exp = (p-1) / 2 */
	    !FUNC8(exp, (const BIGNUM *) p, FUNC9()) ||
	    !FUNC7(exp, exp) ||
	    !FUNC5(tmp, (const BIGNUM *) a, exp,
				       (const BIGNUM *) p, bnctx, NULL))
		goto fail;

	/* Return 1 if tmp == 1, 0 if tmp == 0, or -1 otherwise. Need to use
	 * constant time selection to avoid branches here. */
	res = -1;
	mask = FUNC11(FUNC3(tmp, 1), 1);
	res = FUNC12(mask, 1, res);
	mask = FUNC11(FUNC4(tmp), 1);
	res = FUNC12(mask, 0, res);

fail:
	FUNC2(tmp);
	FUNC2(exp);
	FUNC0(bnctx);
	return res;
}