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
struct dpp_pkex {int /*<<< orphan*/  Nx; int /*<<< orphan*/  identifier; TYPE_1__* own_bi; } ;
struct dpp_curve_params {int prime_len; int ike_group; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;
struct TYPE_2__ {struct dpp_curve_params* curve; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int DPP_ATTR_CODE_IDENTIFIER ; 
 int DPP_ATTR_ENCRYPTED_KEY ; 
 int DPP_ATTR_FINITE_CYCLIC_GROUP ; 
 int /*<<< orphan*/  DPP_PA_PKEX_EXCHANGE_RESP ; 
 int DPP_STATUS_BAD_GROUP ; 
 int DPP_STATUS_OK ; 
 scalar_t__ DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP ; 
 scalar_t__ DPP_TEST_INVALID_STATUS_PKEX_EXCHANGE_RESP ; 
 scalar_t__ DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP ; 
 scalar_t__ DPP_TEST_NO_STATUS_PKEX_EXCHANGE_RESP ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 scalar_t__ dpp_test ; 
 scalar_t__ FUNC3 (struct wpabuf*,struct dpp_curve_params const*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf *
FUNC10(struct dpp_pkex *pkex,
			     enum dpp_status_error status,
			     const BIGNUM *Nx, const BIGNUM *Ny)
{
	struct wpabuf *msg = NULL;
	size_t attr_len;
	const struct dpp_curve_params *curve = pkex->own_bi->curve;

	/* Initiator -> Responder: DPP Status, [identifier,] N */
	attr_len = 4 + 1;
	if (pkex->identifier)
		attr_len += 4 + FUNC4(pkex->identifier);
	attr_len += 4 + 2 * curve->prime_len;
	msg = FUNC0(DPP_PA_PKEX_EXCHANGE_RESP, attr_len);
	if (!msg)
		goto fail;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_STATUS_PKEX_EXCHANGE_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Status");
		goto skip_status;
	}

	if (dpp_test == DPP_TEST_INVALID_STATUS_PKEX_EXCHANGE_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Status");
		status = 255;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* DPP Status */
	FUNC2(msg, status);

#ifdef CONFIG_TESTING_OPTIONS
skip_status:
#endif /* CONFIG_TESTING_OPTIONS */

	/* Code Identifier attribute */
	if (pkex->identifier) {
		FUNC8(msg, DPP_ATTR_CODE_IDENTIFIER);
		FUNC8(msg, FUNC4(pkex->identifier));
		FUNC9(msg, pkex->identifier);
	}

	if (status != DPP_STATUS_OK)
		goto skip_encrypted_key;

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - no Encrypted Key");
		goto skip_encrypted_key;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	/* N in Encrypted Key attribute */
	FUNC8(msg, DPP_ATTR_ENCRYPTED_KEY);
	FUNC8(msg, 2 * curve->prime_len);

#ifdef CONFIG_TESTING_OPTIONS
	if (dpp_test == DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_RESP) {
		wpa_printf(MSG_INFO, "DPP: TESTING - invalid Encrypted Key");
		if (dpp_test_gen_invalid_key(msg, curve) < 0)
			goto fail;
		goto skip_encrypted_key;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	if (FUNC1(Nx, FUNC7(msg, curve->prime_len),
			   curve->prime_len) < 0 ||
	    FUNC1(Nx, pkex->Nx, curve->prime_len) < 0 ||
	    FUNC1(Ny, FUNC7(msg, curve->prime_len),
			   curve->prime_len) < 0)
		goto fail;

skip_encrypted_key:
	if (status == DPP_STATUS_BAD_GROUP) {
		/* Finite Cyclic Group attribute */
		FUNC8(msg, DPP_ATTR_FINITE_CYCLIC_GROUP);
		FUNC8(msg, 2);
		FUNC8(msg, curve->ike_group);
	}

	return msg;
fail:
	FUNC6(msg);
	return NULL;
}