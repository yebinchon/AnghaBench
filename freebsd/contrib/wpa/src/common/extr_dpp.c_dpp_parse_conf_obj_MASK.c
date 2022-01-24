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
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; } ;
struct dpp_authentication {int /*<<< orphan*/  akm; scalar_t__ ssid_len; int /*<<< orphan*/  ssid; } ;

/* Variables and functions */
 scalar_t__ JSON_OBJECT ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SSID_MAX_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpp_authentication*,char*) ; 
 scalar_t__ FUNC4 (struct dpp_authentication*,struct json_token*) ; 
 scalar_t__ FUNC5 (struct dpp_authentication*,struct json_token*) ; 
 int /*<<< orphan*/  FUNC6 (struct json_token*) ; 
 struct json_token* FUNC7 (struct json_token*,char*) ; 
 struct json_token* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC14(struct dpp_authentication *auth,
			      const u8 *conf_obj, u16 conf_obj_len)
{
	int ret = -1;
	struct json_token *root, *token, *discovery, *cred;

	root = FUNC8((const char *) conf_obj, conf_obj_len);
	if (!root)
		return -1;
	if (root->type != JSON_OBJECT) {
		FUNC3(auth, "JSON root is not an object");
		goto fail;
	}

	token = FUNC7(root, "wi-fi_tech");
	if (!token || token->type != JSON_STRING) {
		FUNC3(auth, "No wi-fi_tech string value found");
		goto fail;
	}
	if (FUNC10(token->string, "infra") != 0) {
		FUNC13(MSG_DEBUG, "DPP: Unsupported wi-fi_tech value: '%s'",
			   token->string);
		FUNC3(auth, "Unsupported wi-fi_tech value");
		goto fail;
	}

	discovery = FUNC7(root, "discovery");
	if (!discovery || discovery->type != JSON_OBJECT) {
		FUNC3(auth, "No discovery object in JSON");
		goto fail;
	}

	token = FUNC7(discovery, "ssid");
	if (!token || token->type != JSON_STRING) {
		FUNC3(auth, "No discovery::ssid string value found");
		goto fail;
	}
	FUNC12(MSG_DEBUG, "DPP: discovery::ssid",
			  token->string, FUNC11(token->string));
	if (FUNC11(token->string) > SSID_MAX_LEN) {
		FUNC3(auth, "Too long discovery::ssid string value");
		goto fail;
	}
	auth->ssid_len = FUNC11(token->string);
	FUNC9(auth->ssid, token->string, auth->ssid_len);

	cred = FUNC7(root, "cred");
	if (!cred || cred->type != JSON_OBJECT) {
		FUNC3(auth, "No cred object in JSON");
		goto fail;
	}

	token = FUNC7(cred, "akm");
	if (!token || token->type != JSON_STRING) {
		FUNC3(auth, "No cred::akm string value found");
		goto fail;
	}
	auth->akm = FUNC1(token->string);

	if (FUNC2(auth->akm)) {
		if (FUNC5(auth, cred) < 0)
			goto fail;
	} else if (FUNC0(auth->akm)) {
		if (FUNC4(auth, cred) < 0)
			goto fail;
	} else {
		FUNC13(MSG_DEBUG, "DPP: Unsupported akm: %s",
			   token->string);
		FUNC3(auth, "Unsupported akm");
		goto fail;
	}

	FUNC13(MSG_DEBUG, "DPP: JSON parsing completed successfully");
	ret = 0;
fail:
	FUNC6(root);
	return ret;
}