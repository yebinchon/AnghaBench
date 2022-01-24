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
struct eap_sm {int server_id_len; int /*<<< orphan*/  server_id; } ;
struct eap_gpsk_data {int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; int /*<<< orphan*/  sk_len; int /*<<< orphan*/  sk; int /*<<< orphan*/  rand_server; int /*<<< orphan*/  rand_peer; } ;
struct eap_gpsk_csuite {int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
 int /*<<< orphan*/  EAP_GPSK_OPCODE_GPSK_3 ; 
 int EAP_GPSK_RAND_LEN ; 
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 void* FUNC8 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC12(struct eap_sm *sm,
					     struct eap_gpsk_data *data, u8 id)
{
	u8 *pos, *start;
	size_t len, miclen;
	struct eap_gpsk_csuite *csuite;
	struct wpabuf *req;

	FUNC6(MSG_DEBUG, "EAP-GPSK: Request/GPSK-3");

	miclen = FUNC3(data->vendor, data->specifier);
	len = 1 + 2 * EAP_GPSK_RAND_LEN + 2 + sm->server_id_len +
		sizeof(struct eap_gpsk_csuite) + 2 + miclen;
	req = FUNC5(EAP_VENDOR_IETF, EAP_TYPE_GPSK, len,
			    EAP_CODE_REQUEST, id);
	if (req == NULL) {
		FUNC6(MSG_ERROR, "EAP-GPSK: Failed to allocate memory "
			   "for request/GPSK-3");
		FUNC4(data, FAILURE);
		return NULL;
	}

	FUNC11(req, EAP_GPSK_OPCODE_GPSK_3);
	start = FUNC8(req, 0);

	FUNC10(req, data->rand_peer, EAP_GPSK_RAND_LEN);
	FUNC10(req, data->rand_server, EAP_GPSK_RAND_LEN);
	FUNC9(req, sm->server_id_len);
	FUNC10(req, sm->server_id, sm->server_id_len);
	csuite = FUNC8(req, sizeof(*csuite));
	FUNC1(csuite->vendor, data->vendor);
	FUNC0(csuite->specifier, data->specifier);

	/* no PD_Payload_2 */
	FUNC9(req, 0);

	pos = FUNC8(req, miclen);
	if (FUNC2(data->sk, data->sk_len, data->vendor,
				 data->specifier, start, pos - start, pos) < 0)
	{
		FUNC7(req);
		FUNC4(data, FAILURE);
		return NULL;
	}

	return req;
}