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
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
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
 int FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ NID_X9_62_prime_field ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_KEY_INVALID_EC_VALUE ; 
 int SSH_ERR_LIBCRYPTO_ERROR ; 

int
FUNC16(const EC_GROUP *group, const EC_POINT *public)
{
	BN_CTX *bnctx;
	EC_POINT *nq = NULL;
	BIGNUM *order, *x, *y, *tmp;
	int ret = SSH_ERR_KEY_INVALID_EC_VALUE;

	/*
	 * NB. This assumes OpenSSL has already verified that the public
	 * point lies on the curve. This is done by EC_POINT_oct2point()
	 * implicitly calling EC_POINT_is_on_curve(). If this code is ever
	 * reachable with public points not unmarshalled using
	 * EC_POINT_oct2point then the caller will need to explicitly check.
	 */

	if ((bnctx = FUNC2()) == NULL)
		return SSH_ERR_ALLOC_FAIL;
	FUNC3(bnctx);

	/*
	 * We shouldn't ever hit this case because bignum_get_ecpoint()
	 * refuses to load GF2m points.
	 */
	if (FUNC10(FUNC9(group)) !=
	    NID_X9_62_prime_field)
		goto out;

	/* Q != infinity */
	if (FUNC13(group, public))
		goto out;

	if ((x = FUNC1(bnctx)) == NULL ||
	    (y = FUNC1(bnctx)) == NULL ||
	    (order = FUNC1(bnctx)) == NULL ||
	    (tmp = FUNC1(bnctx)) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}

	/* log2(x) > log2(order)/2, log2(y) > log2(order)/2 */
	if (FUNC8(group, order, bnctx) != 1 ||
	    FUNC12(group, public,
	    x, y, bnctx) != 1) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (FUNC5(x) <= FUNC5(order) / 2 ||
	    FUNC5(y) <= FUNC5(order) / 2)
		goto out;

	/* nQ == infinity (n == order of subgroup) */
	if ((nq = FUNC15(group)) == NULL) {
		ret = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if (FUNC14(group, nq, NULL, public, order, bnctx) != 1) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (FUNC13(group, nq) != 1)
		goto out;

	/* x < order - 1, y < order - 1 */
	if (!FUNC6(tmp, order, FUNC7())) {
		ret = SSH_ERR_LIBCRYPTO_ERROR;
		goto out;
	}
	if (FUNC4(x, tmp) >= 0 || FUNC4(y, tmp) >= 0)
		goto out;
	ret = 0;
 out:
	FUNC0(bnctx);
	FUNC11(nq);
	return ret;
}