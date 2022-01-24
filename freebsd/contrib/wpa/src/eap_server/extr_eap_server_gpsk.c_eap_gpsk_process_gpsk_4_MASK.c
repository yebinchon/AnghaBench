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
typedef  int /*<<< orphan*/  const u8 ;
typedef  int u16 ;
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {scalar_t__ state; int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; int /*<<< orphan*/  sk_len; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EAP_GPSK_MAX_MIC_LEN ; 
 int /*<<< orphan*/  FAILURE ; 
 scalar_t__ GPSK_3 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_gpsk_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC7(struct eap_sm *sm,
				    struct eap_gpsk_data *data,
				    const u8 *payload, size_t payloadlen)
{
	const u8 *pos, *end;
	u16 alen;
	size_t miclen;
	u8 mic[EAP_GPSK_MAX_MIC_LEN];

	if (data->state != GPSK_3)
		return;

	FUNC6(MSG_DEBUG, "EAP-GPSK: Received Response/GPSK-4");

	pos = payload;
	end = payload + payloadlen;

	if (end - pos < 2) {
		FUNC6(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "PD_Payload_1 length");
		FUNC3(data, FAILURE);
		return;
	}
	alen = FUNC0(pos);
	pos += 2;
	if (end - pos < alen) {
		FUNC6(MSG_DEBUG, "EAP-GPSK: Too short message for "
			   "PD_Payload_1");
		FUNC3(data, FAILURE);
		return;
	}
	FUNC5(MSG_DEBUG, "EAP-GPSK: PD_Payload_1", pos, alen);
	pos += alen;

	miclen = FUNC2(data->vendor, data->specifier);
	if (end - pos < (int) miclen) {
		FUNC6(MSG_DEBUG, "EAP-GPSK: Message too short for MIC "
			   "(left=%lu miclen=%lu)",
			   (unsigned long) (end - pos),
			   (unsigned long) miclen);
		FUNC3(data, FAILURE);
		return;
	}
	if (FUNC1(data->sk, data->sk_len, data->vendor,
				 data->specifier, payload, pos - payload, mic)
	    < 0) {
		FUNC6(MSG_DEBUG, "EAP-GPSK: Failed to compute MIC");
		FUNC3(data, FAILURE);
		return;
	}
	if (FUNC4(mic, pos, miclen) != 0) {
		FUNC6(MSG_INFO, "EAP-GPSK: Incorrect MIC in GPSK-4");
		FUNC5(MSG_DEBUG, "EAP-GPSK: Received MIC", pos, miclen);
		FUNC5(MSG_DEBUG, "EAP-GPSK: Computed MIC", mic, miclen);
		FUNC3(data, FAILURE);
		return;
	}
	pos += miclen;

	if (pos != end) {
		FUNC6(MSG_DEBUG, "EAP-GPSK: Ignored %lu bytes of extra "
			   "data in the end of GPSK-4",
			   (unsigned long) (end - pos));
	}

	FUNC3(data, SUCCESS);
}