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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_KEY_INVALID_EC_VALUE ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 

int
FUNC11(const EC_KEY *key)
{
	BN_CTX *bnctx;
	BIGNUM *order, *tmp;
	int ret = SSH_ERR_KEY_INVALID_EC_VALUE;

	if ((bnctx = FUNC2()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	FUNC3(bnctx);

	if ((order = FUNC1(bnctx)) == NULL ||
	    (tmp = FUNC1(bnctx)) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}

	/* log2(private) > log2(order)/2 */
	if (FUNC8(FUNC9(key), order, bnctx) != 1) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (FUNC5(FUNC10(key)) <=
	    FUNC5(order) / 2)
		goto out;

	/* private < order - 1 */
	if (!FUNC6(tmp, order, FUNC7())) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (FUNC4(FUNC10(key), tmp) >= 0)
		goto out;
	ret = 0;
 out:
	FUNC0(bnctx);
	return ret;
}