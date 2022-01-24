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
struct json_token {scalar_t__ type; int /*<<< orphan*/  string; } ;
struct dpp_authentication {int psk_set; int /*<<< orphan*/ * passphrase; int /*<<< orphan*/  akm; int /*<<< orphan*/  psk; } ;

/* Variables and functions */
 scalar_t__ JSON_STRING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int PMK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct json_token* FUNC3 (struct json_token*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct dpp_authentication *auth,
				 struct json_token *cred)
{
	struct json_token *pass, *psk_hex;

	FUNC8(MSG_DEBUG, "DPP: Legacy akm=psk credential");

	pass = FUNC3(cred, "pass");
	psk_hex = FUNC3(cred, "psk_hex");

	if (pass && pass->type == JSON_STRING) {
		size_t len = FUNC5(pass->string);

		FUNC6(MSG_DEBUG, "DPP: Legacy passphrase",
				      pass->string, len);
		if (len < 8 || len > 63)
			return -1;
		FUNC4(auth->passphrase, pass->string,
			   sizeof(auth->passphrase));
	} else if (psk_hex && psk_hex->type == JSON_STRING) {
		if (FUNC1(auth->akm) && !FUNC0(auth->akm)) {
			FUNC8(MSG_DEBUG,
				   "DPP: Unexpected psk_hex with akm=sae");
			return -1;
		}
		if (FUNC5(psk_hex->string) != PMK_LEN * 2 ||
		    FUNC2(psk_hex->string, auth->psk, PMK_LEN) < 0) {
			FUNC8(MSG_DEBUG, "DPP: Invalid psk_hex encoding");
			return -1;
		}
		FUNC7(MSG_DEBUG, "DPP: Legacy PSK",
				auth->psk, PMK_LEN);
		auth->psk_set = 1;
	} else {
		FUNC8(MSG_DEBUG, "DPP: No pass or psk_hex strings found");
		return -1;
	}

	if (FUNC1(auth->akm) && !auth->passphrase[0]) {
		FUNC8(MSG_DEBUG, "DPP: No pass for sae found");
		return -1;
	}

	return 0;
}