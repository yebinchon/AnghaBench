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
struct wpabuf {int dummy; } ;
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; } ;
struct dpp_curve_params {scalar_t__ prime_len; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dpp_curve_params* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct json_token* FUNC5 (struct json_token*,char*) ; 
 struct wpabuf* FUNC6 (struct json_token*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wpabuf*) ; 

__attribute__((used)) static EVP_PKEY * FUNC13(struct json_token *jwk,
				const struct dpp_curve_params **key_curve)
{
	struct json_token *token;
	const struct dpp_curve_params *curve;
	struct wpabuf *x = NULL, *y = NULL;
	EC_GROUP *group;
	EVP_PKEY *pkey = NULL;

	token = FUNC5(jwk, "kty");
	if (!token || token->type != JSON_STRING) {
		FUNC9(MSG_DEBUG, "DPP: No kty in JWK");
		goto fail;
	}
	if (FUNC7(token->string, "EC") != 0) {
		FUNC9(MSG_DEBUG, "DPP: Unexpected JWK kty '%s'",
			   token->string);
		goto fail;
	}

	token = FUNC5(jwk, "crv");
	if (!token || token->type != JSON_STRING) {
		FUNC9(MSG_DEBUG, "DPP: No crv in JWK");
		goto fail;
	}
	curve = FUNC3(token->string);
	if (!curve) {
		FUNC9(MSG_DEBUG, "DPP: Unsupported JWK crv '%s'",
			   token->string);
		goto fail;
	}

	x = FUNC6(jwk, "x");
	if (!x) {
		FUNC9(MSG_DEBUG, "DPP: No x in JWK");
		goto fail;
	}
	FUNC8(MSG_DEBUG, "DPP: JWK x", x);
	if (FUNC12(x) != curve->prime_len) {
		FUNC9(MSG_DEBUG,
			   "DPP: Unexpected JWK x length %u (expected %u for curve %s)",
			   (unsigned int) FUNC12(x),
			   (unsigned int) curve->prime_len, curve->name);
		goto fail;
	}

	y = FUNC6(jwk, "y");
	if (!y) {
		FUNC9(MSG_DEBUG, "DPP: No y in JWK");
		goto fail;
	}
	FUNC8(MSG_DEBUG, "DPP: JWK y", y);
	if (FUNC12(y) != curve->prime_len) {
		FUNC9(MSG_DEBUG,
			   "DPP: Unexpected JWK y length %u (expected %u for curve %s)",
			   (unsigned int) FUNC12(y),
			   (unsigned int) curve->prime_len, curve->name);
		goto fail;
	}

	group = FUNC1(FUNC2(curve->name));
	if (!group) {
		FUNC9(MSG_DEBUG, "DPP: Could not prepare group for JWK");
		goto fail;
	}

	pkey = FUNC4(group, FUNC11(x), FUNC11(y),
					  FUNC12(x));
	FUNC0(group);
	*key_curve = curve;

fail:
	FUNC10(x);
	FUNC10(y);

	return pkey;
}