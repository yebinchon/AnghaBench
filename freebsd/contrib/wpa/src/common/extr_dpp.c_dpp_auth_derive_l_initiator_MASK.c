#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dpp_authentication {int /*<<< orphan*/  secret_len; int /*<<< orphan*/  Lx_len; int /*<<< orphan*/  Lx; TYPE_2__* own_bi; int /*<<< orphan*/  peer_protocol_key; TYPE_1__* peer_bi; } ;
struct TYPE_4__ {int /*<<< orphan*/  pubkey; } ;
struct TYPE_3__ {int /*<<< orphan*/  pubkey; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct dpp_authentication *auth)
{
	const EC_GROUP *group;
	EC_POINT *l = NULL, *sum = NULL;
	EC_KEY *bI = NULL, *BR = NULL, *PR = NULL;
	const EC_POINT *BR_point, *PR_point;
	BN_CTX *bnctx;
	BIGNUM *lx;
	const BIGNUM *bI_bn;
	int ret = -1;

	/* L = bI * (BR + PR) */

	bnctx = FUNC1();
	lx = FUNC3();
	if (!bnctx || !lx)
		goto fail;
	BR = FUNC15(auth->peer_bi->pubkey);
	PR = FUNC15(auth->peer_protocol_key);
	if (!BR || !PR)
		goto fail;
	BR_point = FUNC7(BR);
	PR_point = FUNC7(PR);

	bI = FUNC15(auth->own_bi->pubkey);
	if (!bI)
		goto fail;
	group = FUNC5(bI);
	bI_bn = FUNC6(bI);
	if (!group || !bI_bn)
		goto fail;
	sum = FUNC12(group);
	l = FUNC12(group);
	if (!sum || !l ||
	    FUNC8(group, sum, BR_point, PR_point, bnctx) != 1 ||
	    FUNC11(group, l, NULL, sum, bI_bn, bnctx) != 1 ||
	    FUNC10(group, l, lx, NULL,
						bnctx) != 1) {
		FUNC18(MSG_ERROR,
			   "OpenSSL: failed: %s",
			   FUNC13(FUNC14(), NULL));
		goto fail;
	}

	if (FUNC16(lx, auth->Lx, auth->secret_len) < 0)
		goto fail;
	FUNC17(MSG_DEBUG, "DPP: L.x", auth->Lx, auth->secret_len);
	auth->Lx_len = auth->secret_len;
	ret = 0;
fail:
	FUNC9(l);
	FUNC9(sum);
	FUNC4(bI);
	FUNC4(BR);
	FUNC4(PR);
	FUNC2(lx);
	FUNC0(bnctx);
	return ret;
}