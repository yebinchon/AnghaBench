#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct dpp_pkex {int /*<<< orphan*/  Mx; int /*<<< orphan*/  identifier; void* x; int /*<<< orphan*/  code; int /*<<< orphan*/  own_mac; TYPE_1__* own_bi; } ;
struct dpp_curve_params {int prime_len; int ike_group; } ;
struct TYPE_2__ {struct dpp_curve_params* curve; } ;
typedef  int /*<<< orphan*/  const EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int DPP_ATTR_CODE_IDENTIFIER ; 
 int DPP_ATTR_ENCRYPTED_KEY ; 
 int DPP_ATTR_FINITE_CYCLIC_GROUP ; 
 int /*<<< orphan*/  DPP_PA_PKEX_EXCHANGE_REQ ; 
 scalar_t__ DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ ; 
 scalar_t__ DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ ; 
 scalar_t__ DPP_TEST_NO_FINITE_CYCLIC_GROUP_PKEX_EXCHANGE_REQ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (void*) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC12 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 void* FUNC15 (struct dpp_curve_params const*) ; 
 int /*<<< orphan*/  const* FUNC16 (struct dpp_curve_params const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  dpp_pkex_ephemeral_key_override ; 
 scalar_t__ dpp_pkex_ephemeral_key_override_len ; 
 void* FUNC17 (struct dpp_curve_params const**,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ dpp_test ; 
 scalar_t__ FUNC18 (struct wpabuf*,struct dpp_curve_params const*) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC22 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC25(struct dpp_pkex *pkex)
{
	EC_KEY *X_ec = NULL;
	const EC_POINT *X_point;
	BN_CTX *bnctx = NULL;
	EC_GROUP *group = NULL;
	EC_POINT *Qi = NULL, *M = NULL;
	struct wpabuf *M_buf = NULL;
	BIGNUM *Mx = NULL, *My = NULL;
	struct wpabuf *msg = NULL;
	size_t attr_len;
	const struct dpp_curve_params *curve = pkex->own_bi->curve;

	FUNC20(MSG_DEBUG, "DPP: Build PKEX Exchange Request");

	/* Qi = H(MAC-Initiator | [identifier |] code) * Pi */
	bnctx = FUNC1();
	if (!bnctx)
		goto fail;
	Qi = FUNC16(curve, pkex->own_mac, pkex->code,
				pkex->identifier, bnctx, &group);
	if (!Qi)
		goto fail;

	/* Generate a random ephemeral keypair x/X */
#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_pkex_ephemeral_key_override_len) {
		const struct dpp_curve_params *tmp_curve;

		wpa_printf(MSG_INFO,
			   "DPP: TESTING - override ephemeral key x/X");
		pkex->x = dpp_set_keypair(&tmp_curve,
					  dpp_pkex_ephemeral_key_override,
					  dpp_pkex_ephemeral_key_override_len);
	} else {
		pkex->x = dpp_gen_keypair(curve);
	}
#else /* CONFIG_TESTING_OPTIONS */
	pkex->x = FUNC15(curve);
#endif /* CONFIG_TESTING_OPTIONS */
	if (!pkex->x)
		goto fail;

	/* M = X + Qi */
	X_ec = FUNC11(pkex->x);
	if (!X_ec)
		goto fail;
	X_point = FUNC6(X_ec);
	if (!X_point)
		goto fail;
	FUNC14("DPP: X", group, X_point);
	M = FUNC10(group);
	Mx = FUNC3();
	My = FUNC3();
	if (!M || !Mx || !My ||
	    FUNC7(group, M, X_point, Qi, bnctx) != 1 ||
	    FUNC9(group, M, Mx, My, bnctx) != 1)
		goto fail;
	FUNC14("DPP: M", group, M);

	/* Initiator -> Responder: group, [identifier,] M */
	attr_len = 4 + 2;
	if (pkex->identifier)
		attr_len += 4 + FUNC19(pkex->identifier);
	attr_len += 4 + 2 * curve->prime_len;
	msg = FUNC12(DPP_PA_PKEX_EXCHANGE_REQ, attr_len);
	if (!msg)
		goto fail;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_FINITE_CYCLIC_GROUP_PKEX_EXCHANGE_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Finite Cyclic Group");
		goto skip_finite_cyclic_group;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* Finite Cyclic Group attribute */
	FUNC23(msg, DPP_ATTR_FINITE_CYCLIC_GROUP);
	FUNC23(msg, 2);
	FUNC23(msg, curve->ike_group);

#ifdef CONFIG_TESTING_OPTIONS
skip_finite_cyclic_group:
#endif /* CONFIG_TESTING_OPTIONS */

	/* Code Identifier attribute */
	if (pkex->identifier) {
		FUNC23(msg, DPP_ATTR_CODE_IDENTIFIER);
		FUNC23(msg, FUNC19(pkex->identifier));
		FUNC24(msg, pkex->identifier);
	}

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Encrypted Key");
		goto out;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* M in Encrypted Key attribute */
	FUNC23(msg, DPP_ATTR_ENCRYPTED_KEY);
	FUNC23(msg, 2 * curve->prime_len);

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Encrypted Key");
		if (dpp_test_gen_invalid_key(msg, curve) < 0)
			goto fail;
		goto out;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	if (FUNC13(Mx, FUNC22(msg, curve->prime_len),
			   curve->prime_len) < 0 ||
	    FUNC13(Mx, pkex->Mx, curve->prime_len) < 0 ||
	    FUNC13(My, FUNC22(msg, curve->prime_len),
			   curve->prime_len) < 0)
		goto fail;

out:
	FUNC21(M_buf);
	FUNC5(X_ec);
	FUNC8(M);
	FUNC8(Qi);
	FUNC2(Mx);
	FUNC2(My);
	FUNC0(bnctx);
	FUNC4(group);
	return msg;
fail:
	FUNC20(MSG_INFO, "DPP: Failed to build PKEX Exchange Request");
	FUNC21(msg);
	msg = NULL;
	goto out;
}