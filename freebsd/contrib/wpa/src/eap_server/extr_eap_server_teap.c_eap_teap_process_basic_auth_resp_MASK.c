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
typedef  int u8 ;
struct eap_teap_data {int dummy; } ;
struct eap_sm {int* identity; int identity_len; TYPE_1__* user; } ;
struct TYPE_2__ {int password_len; int /*<<< orphan*/  password; scalar_t__ password_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_BINDING ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_teap_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*,struct eap_teap_data*) ; 
 scalar_t__ FUNC3 (struct eap_sm*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int* FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC10(struct eap_sm *sm,
					     struct eap_teap_data *data,
					     u8 *in_data, size_t in_len)
{
	u8 *pos, *end, *username, *password, *new_id;
	u8 userlen, passlen;

	pos = in_data;
	end = pos + in_len;

	if (end - pos < 1) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: No room for Basic-Password-Auth-Resp Userlen field");
		FUNC0(data, 0);
		return;
	}
	userlen = *pos++;
	if (end - pos < userlen) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: Truncated Basic-Password-Auth-Resp Username field");
		FUNC0(data, 0);
		return;
	}
	username = pos;
	pos += userlen;
	FUNC7(MSG_DEBUG,
			  "EAP-TEAP: Basic-Password-Auth-Resp Username",
			  username, userlen);

	if (end - pos < 1) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: No room for Basic-Password-Auth-Resp Passlen field");
		FUNC0(data, 0);
		return;
	}
	passlen = *pos++;
	if (end - pos < passlen) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: Truncated Basic-Password-Auth-Resp Password field");
		FUNC0(data, 0);
		return;
	}
	password = pos;
	pos += passlen;
	FUNC8(MSG_DEBUG,
			      "EAP-TEAP: Basic-Password-Auth-Resp Password",
			      password, passlen);

	if (end > pos) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: Unexpected %d extra octet(s) at the end of Basic-Password-Auth-Resp TLV",
			   (int) (end - pos));
		FUNC0(data, 0);
		return;
	}

	if (FUNC3(sm, username, userlen, 1) != 0) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: Username not found in the user database");
		FUNC0(data, 0);
		return;
	}

	if (!sm->user || !sm->user->password || sm->user->password_hash) {
		FUNC9(MSG_DEBUG,
			   "EAP-TEAP: No plaintext user password configured");
		FUNC0(data, 0);
		return;
	}

	if (sm->user->password_len != passlen ||
	    FUNC5(sm->user->password, password, passlen) != 0) {
		FUNC9(MSG_DEBUG, "EAP-TEAP: Invalid password");
		FUNC0(data, 0);
		return;
	}

	FUNC9(MSG_DEBUG, "EAP-TEAP: Correct password");
	new_id = FUNC6(username, userlen);
	if (new_id) {
		FUNC4(sm->identity);
		sm->identity = new_id;
		sm->identity_len = userlen;
	}
	FUNC1(data, CRYPTO_BINDING);
	FUNC2(sm, data);
}