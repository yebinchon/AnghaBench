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
struct eap_peer_config {scalar_t__ pending_req_new_password; scalar_t__ new_password; } ;
struct eap_mschapv2_hdr {int dummy; } ;
struct eap_mschapv2_data {scalar_t__ prev_error; int passwd_change_version; } ;
struct eap_method_ret {void* allowNotifications; int /*<<< orphan*/  decision; int /*<<< orphan*/  methodState; void* ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  DECISION_FAIL ; 
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_TYPE_MSCHAPV2 ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 scalar_t__ ERROR_AUTHENTICATION_FAILURE ; 
 scalar_t__ ERROR_PASSWD_EXPIRED ; 
 void* FALSE ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSCHAPV2_OP_FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 char* FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 struct eap_peer_config* FUNC1 (struct eap_sm*) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,struct eap_mschapv2_data*,struct eap_method_ret*,struct eap_mschapv2_hdr const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct eap_sm*,struct eap_mschapv2_data*,char*) ; 
 struct wpabuf* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_sm *sm,
					    struct eap_mschapv2_data *data,
					    struct eap_method_ret *ret,
					    const struct eap_mschapv2_hdr *req,
					    size_t req_len, u8 id)
{
	struct wpabuf *resp;
	const u8 *msdata = (const u8 *) (req + 1);
	char *buf;
	size_t len = req_len - sizeof(*req);
	int retry = 0;

	FUNC7(MSG_DEBUG, "EAP-MSCHAPV2: Received failure");
	FUNC6(MSG_DEBUG, "EAP-MSCHAPV2: Failure data",
			  msdata, len);
	/*
	 * eap_mschapv2_failure_txt() expects a nul terminated string, so we
	 * must allocate a large enough temporary buffer to create that since
	 * the received message does not include nul termination.
	 */
	buf = FUNC0(msdata, len);
	if (buf) {
		retry = FUNC3(sm, data, buf);
		FUNC5(buf);
	}

	ret->ignore = FALSE;
	ret->methodState = METHOD_DONE;
	ret->decision = DECISION_FAIL;
	ret->allowNotifications = FALSE;

	if (data->prev_error == ERROR_PASSWD_EXPIRED &&
	    data->passwd_change_version == 3) {
		struct eap_peer_config *config = FUNC1(sm);
		if (config && config->new_password)
			return FUNC2(sm, data, ret, req,
							    id);
		if (config && config->pending_req_new_password)
			return NULL;
	} else if (retry && data->prev_error == ERROR_AUTHENTICATION_FAILURE) {
		/* TODO: could try to retry authentication, e.g, after having
		 * changed the username/password. In this case, EAP MS-CHAP-v2
		 * Failure Response would not be sent here. */
		return NULL;
	}

	/* Note: Only op_code of the EAP-MSCHAPV2 header is included in failure
	 * message. */
	resp = FUNC4(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, 1,
			     EAP_CODE_RESPONSE, id);
	if (resp == NULL)
		return NULL;

	FUNC8(resp, MSCHAPV2_OP_FAILURE); /* op_code */

	return resp;
}