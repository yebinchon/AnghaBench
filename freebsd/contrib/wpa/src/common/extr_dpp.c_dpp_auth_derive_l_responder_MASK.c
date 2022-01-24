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
struct dpp_authentication {int /*<<< orphan*/  secret_len; int /*<<< orphan*/  Lx_len; int /*<<< orphan*/  Lx; int /*<<< orphan*/  own_protocol_key; TYPE_2__* own_bi; TYPE_1__* peer_bi; } ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct dpp_authentication *auth)
{
	const EC_GROUP *group;
	EC_POINT *l = NULL;
	EC_KEY *BI = NULL, *bR = NULL, *pR = NULL;
	const EC_POINT *BI_point;
	BN_CTX *bnctx;
	BIGNUM *lx, *sum, *q;
	const BIGNUM *bR_bn, *pR_bn;
	int ret = -1;

	/* L = ((bR + pR) modulo q) * BI */

	bnctx = FUNC1();
	sum = FUNC5();
	q = FUNC5();
	lx = FUNC5();
	if (!bnctx || !sum || !q || !lx)
		goto fail;
	BI = FUNC17(auth->peer_bi->pubkey);
	if (!BI)
		goto fail;
	BI_point = FUNC10(BI);
	group = FUNC8(BI);
	if (!group)
		goto fail;

	bR = FUNC17(auth->own_bi->pubkey);
	pR = FUNC17(auth->own_protocol_key);
	if (!bR || !pR)
		goto fail;
	bR_bn = FUNC9(bR);
	pR_bn = FUNC9(pR);
	if (!bR_bn || !pR_bn)
		goto fail;
	if (FUNC6(group, q, bnctx) != 1 ||
	    FUNC4(sum, bR_bn, pR_bn, q, bnctx) != 1)
		goto fail;
	l = FUNC14(group);
	if (!l ||
	    FUNC13(group, l, NULL, BI_point, sum, bnctx) != 1 ||
	    FUNC12(group, l, lx, NULL,
						bnctx) != 1) {
		FUNC20(MSG_ERROR,
			   "OpenSSL: failed: %s",
			   FUNC15(FUNC16(), NULL));
		goto fail;
	}

	if (FUNC18(lx, auth->Lx, auth->secret_len) < 0)
		goto fail;
	FUNC19(MSG_DEBUG, "DPP: L.x", auth->Lx, auth->secret_len);
	auth->Lx_len = auth->secret_len;
	ret = 0;
fail:
	FUNC11(l);
	FUNC7(BI);
	FUNC7(bR);
	FUNC7(pR);
	FUNC2(lx);
	FUNC2(sum);
	FUNC3(q);
	FUNC0(bnctx);
	return ret;
}