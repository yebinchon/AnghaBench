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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static EVP_PKEY * FUNC21(const EC_GROUP *group,
					     const u8 *buf_x, const u8 *buf_y,
					     size_t len)
{
	EC_KEY *eckey = NULL;
	BN_CTX *ctx;
	EC_POINT *point = NULL;
	BIGNUM *x = NULL, *y = NULL;
	EVP_PKEY *pkey = NULL;

	ctx = FUNC1();
	if (!ctx) {
		FUNC20(MSG_ERROR, "DPP: Out of memory");
		return NULL;
	}

	point = FUNC12(group);
	x = FUNC2(buf_x, len, NULL);
	y = FUNC2(buf_y, len, NULL);
	if (!point || !x || !y) {
		FUNC20(MSG_ERROR, "DPP: Out of memory");
		goto fail;
	}

	if (!FUNC13(group, point, x, y, ctx)) {
		FUNC20(MSG_ERROR,
			   "DPP: OpenSSL: EC_POINT_set_affine_coordinates_GFp failed: %s",
			   FUNC14(FUNC15(), NULL));
		goto fail;
	}

	if (!FUNC11(group, point, ctx) ||
	    FUNC10(group, point)) {
		FUNC20(MSG_ERROR, "DPP: Invalid point");
		goto fail;
	}
	FUNC19("DPP: dpp_set_pubkey_point_group", group, point);

	eckey = FUNC5();
	if (!eckey ||
	    FUNC7(eckey, group) != 1 ||
	    FUNC8(eckey, point) != 1) {
		FUNC20(MSG_ERROR,
			   "DPP: Failed to set EC_KEY: %s",
			   FUNC14(FUNC15(), NULL));
		goto fail;
	}
	FUNC6(eckey, OPENSSL_EC_NAMED_CURVE);

	pkey = FUNC17();
	if (!pkey || FUNC18(pkey, eckey) != 1) {
		FUNC20(MSG_ERROR, "DPP: Could not create EVP_PKEY");
		goto fail;
	}

out:
	FUNC3(x);
	FUNC3(y);
	FUNC4(eckey);
	FUNC9(point);
	FUNC0(ctx);
	return pkey;
fail:
	FUNC16(pkey);
	pkey = NULL;
	goto out;
}