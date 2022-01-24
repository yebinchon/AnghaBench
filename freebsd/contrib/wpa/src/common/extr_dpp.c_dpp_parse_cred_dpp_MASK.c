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
struct json_token {scalar_t__ type; char* string; } ;
struct dpp_signed_connector_info {int /*<<< orphan*/  payload; int /*<<< orphan*/  payload_len; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_authentication {int /*<<< orphan*/  connector; int /*<<< orphan*/  akm; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ DPP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ JSON_OBJECT ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp_authentication*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dpp_authentication*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct dpp_authentication*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct dpp_authentication*,struct json_token*) ; 
 int /*<<< orphan*/ * FUNC8 (struct json_token*,struct dpp_curve_params const**) ; 
 scalar_t__ FUNC9 (struct dpp_signed_connector_info*,int /*<<< orphan*/ *,char const*) ; 
 struct json_token* FUNC10 (struct json_token*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dpp_signed_connector_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (char const*,char) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC18(struct dpp_authentication *auth,
			      struct json_token *cred)
{
	struct dpp_signed_connector_info info;
	struct json_token *token, *csign;
	int ret = -1;
	EVP_PKEY *csign_pub = NULL;
	const struct dpp_curve_params *key_curve = NULL;
	const char *signed_connector;

	FUNC12(&info, 0, sizeof(info));

	if (FUNC1(auth->akm) || FUNC2(auth->akm)) {
		FUNC17(MSG_DEBUG,
			   "DPP: Legacy credential included in Connector credential");
		if (FUNC7(auth, cred) < 0)
			return -1;
	}

	FUNC17(MSG_DEBUG, "DPP: Connector credential");

	csign = FUNC10(cred, "csign");
	if (!csign || csign->type != JSON_OBJECT) {
		FUNC17(MSG_DEBUG, "DPP: No csign JWK in JSON");
		goto fail;
	}

	csign_pub = FUNC8(csign, &key_curve);
	if (!csign_pub) {
		FUNC17(MSG_DEBUG, "DPP: Failed to parse csign JWK");
		goto fail;
	}
	FUNC5("DPP: Received C-sign-key", csign_pub);

	token = FUNC10(cred, "signedConnector");
	if (!token || token->type != JSON_STRING) {
		FUNC17(MSG_DEBUG, "DPP: No signedConnector string found");
		goto fail;
	}
	FUNC16(MSG_DEBUG, "DPP: signedConnector",
			  token->string, FUNC15(token->string));
	signed_connector = token->string;

	if (FUNC13(signed_connector, '"') ||
	    FUNC13(signed_connector, '\n')) {
		FUNC17(MSG_DEBUG,
			   "DPP: Unexpected character in signedConnector");
		goto fail;
	}

	if (FUNC9(&info, csign_pub,
					 signed_connector) != DPP_STATUS_OK)
		goto fail;

	if (FUNC6(auth, info.payload, info.payload_len) < 0) {
		FUNC17(MSG_DEBUG, "DPP: Failed to parse connector");
		goto fail;
	}

	FUNC11(auth->connector);
	auth->connector = FUNC14(signed_connector);

	FUNC3(auth, csign_pub);
	FUNC4(auth);

	ret = 0;
fail:
	FUNC0(csign_pub);
	FUNC11(info.payload);
	return ret;
}