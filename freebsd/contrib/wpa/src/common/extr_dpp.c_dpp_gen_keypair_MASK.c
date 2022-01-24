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
struct dpp_curve_params {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int NID_undef ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ wpa_debug_show_keys ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static EVP_PKEY * FUNC13(const struct dpp_curve_params *curve)
{
	EVP_PKEY_CTX *kctx = NULL;
	EC_KEY *ec_params = NULL;
	EVP_PKEY *params = NULL, *key = NULL;
	int nid;

	FUNC12(MSG_DEBUG, "DPP: Generating a keypair");

	nid = FUNC10(curve->name);
	if (nid == NID_undef) {
		FUNC12(MSG_INFO, "DPP: Unsupported curve %s", curve->name);
		return NULL;
	}

	ec_params = FUNC1(nid);
	if (!ec_params) {
		FUNC12(MSG_ERROR,
			   "DPP: Failed to generate EC_KEY parameters");
		goto fail;
	}
	FUNC2(ec_params, OPENSSL_EC_NAMED_CURVE);
	params = FUNC8();
	if (!params || FUNC9(params, ec_params) != 1) {
		FUNC12(MSG_ERROR,
			   "DPP: Failed to generate EVP_PKEY parameters");
		goto fail;
	}

	kctx = FUNC4(params, NULL);
	if (!kctx ||
	    FUNC7(kctx) != 1 ||
	    FUNC6(kctx, &key) != 1) {
		FUNC12(MSG_ERROR, "DPP: Failed to generate EC key");
		key = NULL;
		goto fail;
	}

	if (wpa_debug_show_keys)
		FUNC11("Own generated key", key);

fail:
	FUNC0(ec_params);
	FUNC5(params);
	FUNC3(kctx);
	return key;
}