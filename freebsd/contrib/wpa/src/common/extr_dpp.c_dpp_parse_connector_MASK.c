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
typedef  int /*<<< orphan*/  u16 ;
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; struct json_token* sibling; struct json_token* child; } ;
struct dpp_curve_params {int dummy; } ;
struct dpp_authentication {scalar_t__ ignore_netaccesskey_mismatch; int /*<<< orphan*/  own_protocol_key; int /*<<< orphan*/  net_access_key_expiry; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ JSON_ARRAY ; 
 scalar_t__ JSON_OBJECT ; 
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct json_token*,struct dpp_curve_params const**) ; 
 int /*<<< orphan*/  FUNC5 (struct json_token*) ; 
 struct json_token* FUNC6 (struct json_token*,char*) ; 
 struct json_token* FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(struct dpp_authentication *auth,
			       const unsigned char *payload,
			       u16 payload_len)
{
	struct json_token *root, *groups, *netkey, *token;
	int ret = -1;
	EVP_PKEY *key = NULL;
	const struct dpp_curve_params *curve;
	unsigned int rules = 0;

	root = FUNC7((const char *) payload, payload_len);
	if (!root) {
		FUNC8(MSG_DEBUG, "DPP: JSON parsing of connector failed");
		goto fail;
	}

	groups = FUNC6(root, "groups");
	if (!groups || groups->type != JSON_ARRAY) {
		FUNC8(MSG_DEBUG, "DPP: No groups array found");
		goto skip_groups;
	}
	for (token = groups->child; token; token = token->sibling) {
		struct json_token *id, *role;

		id = FUNC6(token, "groupId");
		if (!id || id->type != JSON_STRING) {
			FUNC8(MSG_DEBUG, "DPP: Missing groupId string");
			goto fail;
		}

		role = FUNC6(token, "netRole");
		if (!role || role->type != JSON_STRING) {
			FUNC8(MSG_DEBUG, "DPP: Missing netRole string");
			goto fail;
		}
		FUNC8(MSG_DEBUG,
			   "DPP: connector group: groupId='%s' netRole='%s'",
			   id->string, role->string);
		rules++;
	}
skip_groups:

	if (!rules) {
		FUNC8(MSG_DEBUG,
			   "DPP: Connector includes no groups");
		goto fail;
	}

	token = FUNC6(root, "expiry");
	if (!token || token->type != JSON_STRING) {
		FUNC8(MSG_DEBUG,
			   "DPP: No expiry string found - connector does not expire");
	} else {
		FUNC8(MSG_DEBUG, "DPP: expiry = %s", token->string);
		if (FUNC3(token->string,
				    &auth->net_access_key_expiry)) {
			FUNC8(MSG_DEBUG,
				   "DPP: Connector (netAccessKey) has expired");
			goto fail;
		}
	}

	netkey = FUNC6(root, "netAccessKey");
	if (!netkey || netkey->type != JSON_OBJECT) {
		FUNC8(MSG_DEBUG, "DPP: No netAccessKey object found");
		goto fail;
	}

	key = FUNC4(netkey, &curve);
	if (!key)
		goto fail;
	FUNC2("DPP: Received netAccessKey", key);

	if (FUNC0(key, auth->own_protocol_key) != 1) {
		FUNC8(MSG_DEBUG,
			   "DPP: netAccessKey in connector does not match own protocol key");
#ifdef CONFIG_TESTING_OPTIONS
		if (auth->ignore_netaccesskey_mismatch) {
			wpa_printf(MSG_DEBUG,
				   "DPP: TESTING - skip netAccessKey mismatch");
		} else {
			goto fail;
		}
#else /* CONFIG_TESTING_OPTIONS */
		goto fail;
#endif /* CONFIG_TESTING_OPTIONS */
	}

	ret = 0;
fail:
	FUNC1(key);
	FUNC5(root);
	return ret;
}