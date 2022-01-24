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
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_COND_SUCC ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_OTP ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FALSE ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC2 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct eap_sm*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC11(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct wpabuf *resp;
	const u8 *pos, *password;
	size_t password_len, len;
	int otp;

	pos = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_OTP, reqData, &len);
	if (pos == NULL) {
		ret->ignore = TRUE;
		return NULL;
	}
	FUNC7(MSG_MSGDUMP, "EAP-OTP: Request message",
			  pos, len);

	password = FUNC1(sm, &password_len);
	if (password)
		otp = 1;
	else {
		password = FUNC2(sm, &password_len);
		otp = 0;
	}

	if (password == NULL) {
		FUNC9(MSG_INFO, "EAP-OTP: Password not configured");
		FUNC6(sm, (const char *) pos, len);
		ret->ignore = TRUE;
		return NULL;
	}

	ret->ignore = FALSE;

	ret->methodState = METHOD_DONE;
	ret->decision = DECISION_COND_SUCC;
	ret->allowNotifications = FALSE;

	resp = FUNC5(EAP_VENDOR_IETF, EAP_TYPE_OTP, password_len,
			     EAP_CODE_RESPONSE, FUNC3(reqData));
	if (resp == NULL)
		return NULL;
	FUNC10(resp, password, password_len);
	FUNC8(MSG_MSGDUMP, "EAP-OTP: Response",
			      password, password_len);

	if (otp) {
		FUNC9(MSG_DEBUG, "EAP-OTP: Forgetting used password");
		FUNC0(sm);
	}

	return resp;
}