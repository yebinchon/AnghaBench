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
struct teap_tlv_hdr {int dummy; } ;
struct eap_teap_data {int phase2_success; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  TEAP_TLV_BASIC_PASSWORD_AUTH_REQ ; 
 int /*<<< orphan*/  TEAP_TLV_BASIC_PASSWORD_AUTH_RESP ; 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eap_sm*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ,size_t) ; 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC10(
	struct eap_sm *sm, struct eap_teap_data *data,
	u8 *basic_auth_req, size_t basic_auth_req_len)
{
	const u8 *identity, *password;
	size_t identity_len, password_len, plen;
	struct wpabuf *resp;

	FUNC4(MSG_DEBUG, "EAP-TEAP: Basic-Password-Auth-Req prompt",
			  basic_auth_req, basic_auth_req_len);
	/* TODO: send over control interface */

	identity = FUNC0(sm, &identity_len);
	password = FUNC1(sm, &password_len);
	if (!identity || !password ||
	    identity_len > 255 || password_len > 255) {
		FUNC6(MSG_DEBUG,
			   "EAP-TEAP: No username/password suitable for Basic-Password-Auth");
		return FUNC3(0, TEAP_TLV_BASIC_PASSWORD_AUTH_REQ);
	}

	plen = 1 + identity_len + 1 + password_len;
	resp = FUNC7(sizeof(struct teap_tlv_hdr) + plen);
	if (!resp)
		return NULL;
	FUNC2(resp, TEAP_TLV_BASIC_PASSWORD_AUTH_RESP, plen);
	FUNC9(resp, identity_len);
	FUNC8(resp, identity, identity_len);
	FUNC9(resp, password_len);
	FUNC8(resp, password, password_len);
	FUNC5(MSG_DEBUG, "EAP-TEAP: Basic-Password-Auth-Resp",
			    resp);

	/* Assume this succeeds so that Result TLV(Success) from the server can
	 * be used to terminate TEAP. */
	data->phase2_success = 1;

	return resp;
}