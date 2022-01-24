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
struct wpabuf {int dummy; } ;
struct eap_ttls_data {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DECISION_COND_SUCC ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_NAME ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_PASSWORD ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC8 (size_t) ; 
 int /*<<< orphan*/ * FUNC9 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC11(struct eap_sm *sm,
				       struct eap_ttls_data *data,
				       struct eap_method_ret *ret,
				       struct wpabuf **resp)
{
	struct wpabuf *msg;
	u8 *buf, *pos;
	size_t pad;
	const u8 *identity, *password;
	size_t identity_len, password_len;

	FUNC7(MSG_DEBUG, "EAP-TTLS: Phase 2 PAP Request");

	identity = FUNC1(sm, &identity_len);
	password = FUNC2(sm, &password_len);
	if (identity == NULL || password == NULL)
		return -1;

	msg = FUNC8(identity_len + password_len + 100);
	if (msg == NULL) {
		FUNC7(MSG_ERROR,
			   "EAP-TTLS/PAP: Failed to allocate memory");
		return -1;
	}
	pos = buf = FUNC9(msg);

	/* User-Name */
	pos = FUNC3(buf, pos, RADIUS_ATTR_USER_NAME, 0, 1,
			       identity, identity_len);

	/* User-Password; in RADIUS, this is encrypted, but EAP-TTLS encrypts
	 * the data, so no separate encryption is used in the AVP itself.
	 * However, the password is padded to obfuscate its length. */
	pad = password_len == 0 ? 16 : (16 - (password_len & 15)) & 15;
	pos = FUNC4(pos, RADIUS_ATTR_USER_PASSWORD, 0, 1,
			       password_len + pad);
	FUNC5(pos, password, password_len);
	pos += password_len;
	FUNC6(pos, 0, pad);
	pos += pad;
	FUNC0(buf, pos);

	FUNC10(msg, pos - buf);
	*resp = msg;

	/* EAP-TTLS/PAP does not provide tunneled success notification,
	 * so assume that Phase2 succeeds. */
	ret->methodState = METHOD_DONE;
	ret->decision = DECISION_COND_SUCC;

	return 0;
}