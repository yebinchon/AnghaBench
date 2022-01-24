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
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; } ;
struct dpp_curve_params {char* jws_alg; } ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ JSON_OBJECT ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC3 (struct json_token*) ; 
 struct json_token* FUNC4 (struct json_token*,char*) ; 
 struct wpabuf* FUNC5 (struct json_token*,char*) ; 
 struct json_token* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct wpabuf *
FUNC10(const struct dpp_curve_params *curve,
		       const u8 *prot_hdr, u16 prot_hdr_len,
		       const EVP_MD **ret_md)
{
	struct json_token *root, *token;
	struct wpabuf *kid = NULL;

	root = FUNC6((const char *) prot_hdr, prot_hdr_len);
	if (!root) {
		FUNC9(MSG_DEBUG,
			   "DPP: JSON parsing failed for JWS Protected Header");
		goto fail;
	}

	if (root->type != JSON_OBJECT) {
		FUNC9(MSG_DEBUG,
			   "DPP: JWS Protected Header root is not an object");
		goto fail;
	}

	token = FUNC4(root, "typ");
	if (!token || token->type != JSON_STRING) {
		FUNC9(MSG_DEBUG, "DPP: No typ string value found");
		goto fail;
	}
	FUNC9(MSG_DEBUG, "DPP: JWS Protected Header typ=%s",
		   token->string);
	if (FUNC7(token->string, "dppCon") != 0) {
		FUNC9(MSG_DEBUG,
			   "DPP: Unsupported JWS Protected Header typ=%s",
			   token->string);
		goto fail;
	}

	token = FUNC4(root, "alg");
	if (!token || token->type != JSON_STRING) {
		FUNC9(MSG_DEBUG, "DPP: No alg string value found");
		goto fail;
	}
	FUNC9(MSG_DEBUG, "DPP: JWS Protected Header alg=%s",
		   token->string);
	if (FUNC7(token->string, curve->jws_alg) != 0) {
		FUNC9(MSG_DEBUG,
			   "DPP: Unexpected JWS Protected Header alg=%s (expected %s based on C-sign-key)",
			   token->string, curve->jws_alg);
		goto fail;
	}
	if (FUNC7(token->string, "ES256") == 0 ||
	    FUNC7(token->string, "BS256") == 0)
		*ret_md = FUNC0();
	else if (FUNC7(token->string, "ES384") == 0 ||
		 FUNC7(token->string, "BS384") == 0)
		*ret_md = FUNC1();
	else if (FUNC7(token->string, "ES512") == 0 ||
		 FUNC7(token->string, "BS512") == 0)
		*ret_md = FUNC2();
	else
		*ret_md = NULL;
	if (!*ret_md) {
		FUNC9(MSG_DEBUG,
			   "DPP: Unsupported JWS Protected Header alg=%s",
			   token->string);
		goto fail;
	}

	kid = FUNC5(root, "kid");
	if (!kid) {
		FUNC9(MSG_DEBUG, "DPP: No kid string value found");
		goto fail;
	}
	FUNC8(MSG_DEBUG, "DPP: JWS Protected Header kid (decoded)",
			kid);

fail:
	FUNC3(root);
	return kid;
}