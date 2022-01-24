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
struct eap_gpsk_data {int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; int /*<<< orphan*/  sk_len; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_RESPONSE ; 
 int /*<<< orphan*/  EAP_GPSK_OPCODE_GPSK_4 ; 
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpabuf*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpabuf * FUNC9(struct eap_gpsk_data *data,
					    u8 identifier)
{
	struct wpabuf *resp;
	u8 *rpos, *start;
	size_t mlen;

	FUNC4(MSG_DEBUG, "EAP-GPSK: Sending Response/GPSK-4");

	mlen = FUNC1(data->vendor, data->specifier);

	resp = FUNC3(EAP_VENDOR_IETF, EAP_TYPE_GPSK, 1 + 2 + mlen,
			     EAP_CODE_RESPONSE, identifier);
	if (resp == NULL)
		return NULL;

	FUNC8(resp, EAP_GPSK_OPCODE_GPSK_4);
	start = FUNC6(resp, 0);

	/* No PD_Payload_3 */
	FUNC7(resp, 0);

	rpos = FUNC6(resp, mlen);
	if (FUNC0(data->sk, data->sk_len, data->vendor,
				 data->specifier, start, rpos - start, rpos) <
	    0) {
		FUNC2(data, FAILURE);
		FUNC5(resp);
		return NULL;
	}

	return resp;
}