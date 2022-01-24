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
typedef  char u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {void* allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* ignore; } ;
struct eap_hdr {int dummy; } ;
struct eap_gtc_data {scalar_t__ prefix; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_COND_SUCC ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_GTC ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 void* FALSE ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  METHOD_MAY_CONT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*) ; 
 char* FUNC1 (struct eap_sm*,size_t*) ; 
 char* FUNC2 (struct eap_sm*,size_t*) ; 
 char* FUNC3 (struct eap_sm*,size_t*) ; 
 char FUNC4 (struct wpabuf const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*,size_t*) ; 
 struct wpabuf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (struct eap_sm*,char const*,size_t) ; 
 scalar_t__ FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct wpabuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,char) ; 

__attribute__((used)) static struct wpabuf * FUNC15(struct eap_sm *sm, void *priv,
				       struct eap_method_ret *ret,
				       const struct wpabuf *reqData)
{
	struct eap_gtc_data *data = priv;
	struct wpabuf *resp;
	const u8 *pos, *password, *identity;
	size_t password_len, identity_len, len, plen;
	int otp;
	u8 id;

	pos = FUNC5(EAP_VENDOR_IETF, EAP_TYPE_GTC, reqData, &len);
	if (pos == NULL) {
		ret->ignore = TRUE;
		return NULL;
	}
	id = FUNC4(reqData);

	FUNC9(MSG_MSGDUMP, "EAP-GTC: Request message", pos, len);
	if (data->prefix &&
	    (len < 10 || FUNC8(pos, "CHALLENGE=", 10) != 0)) {
		FUNC11(MSG_DEBUG, "EAP-GTC: Challenge did not start with "
			   "expected prefix");

		/* Send an empty response in order to allow tunneled
		 * acknowledgement of the failure. This will also cover the
		 * error case which seems to use EAP-MSCHAPv2 like error
		 * reporting with EAP-GTC inside EAP-FAST tunnel. */
		resp = FUNC6(EAP_VENDOR_IETF, EAP_TYPE_GTC,
				     0, EAP_CODE_RESPONSE, id);
		return resp;
	}

	password = FUNC2(sm, &password_len);
	if (password)
		otp = 1;
	else {
		password = FUNC3(sm, &password_len);
		otp = 0;
	}

	if (password == NULL) {
		FUNC11(MSG_INFO, "EAP-GTC: Password not configured");
		FUNC7(sm, (const char *) pos, len);
		ret->ignore = TRUE;
		return NULL;
	}

	ret->ignore = FALSE;

	ret->methodState = data->prefix ? METHOD_MAY_CONT : METHOD_DONE;
	ret->decision = DECISION_COND_SUCC;
	ret->allowNotifications = FALSE;

	plen = password_len;
	identity = FUNC1(sm, &identity_len);
	if (identity == NULL)
		return NULL;
	if (data->prefix)
		plen += 9 + identity_len + 1;
	resp = FUNC6(EAP_VENDOR_IETF, EAP_TYPE_GTC, plen,
			     EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;
	if (data->prefix) {
		FUNC13(resp, "RESPONSE=", 9);
		FUNC13(resp, identity, identity_len);
		FUNC14(resp, '\0');
	}
	FUNC13(resp, password, password_len);
	FUNC10(MSG_MSGDUMP, "EAP-GTC: Response",
			      FUNC12(resp) + sizeof(struct eap_hdr) +
			      1, plen);

	if (otp) {
		FUNC11(MSG_DEBUG, "EAP-GTC: Forgetting used password");
		FUNC0(sm);
	}

	return resp;
}