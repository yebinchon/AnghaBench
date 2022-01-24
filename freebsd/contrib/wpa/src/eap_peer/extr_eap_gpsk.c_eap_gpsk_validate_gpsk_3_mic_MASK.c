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
struct eap_gpsk_data {int /*<<< orphan*/  specifier; int /*<<< orphan*/  vendor; int /*<<< orphan*/  sk_len; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EAP_GPSK_MAX_MIC_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static const u8 * FUNC5(struct eap_gpsk_data *data,
					       const u8 *payload,
					       const u8 *pos, const u8 *end)
{
	size_t miclen;
	u8 mic[EAP_GPSK_MAX_MIC_LEN];

	if (pos == NULL)
		return NULL;

	miclen = FUNC1(data->vendor, data->specifier);
	if (end - pos < (int) miclen) {
		FUNC4(MSG_DEBUG, "EAP-GPSK: Message too short for MIC "
			   "(left=%lu miclen=%lu)",
			   (unsigned long) (end - pos),
			   (unsigned long) miclen);
		return NULL;
	}
	if (FUNC0(data->sk, data->sk_len, data->vendor,
				 data->specifier, payload, pos - payload, mic)
	    < 0) {
		FUNC4(MSG_DEBUG, "EAP-GPSK: Failed to compute MIC");
		return NULL;
	}
	if (FUNC2(mic, pos, miclen) != 0) {
		FUNC4(MSG_INFO, "EAP-GPSK: Incorrect MIC in GPSK-3");
		FUNC3(MSG_DEBUG, "EAP-GPSK: Received MIC", pos, miclen);
		FUNC3(MSG_DEBUG, "EAP-GPSK: Computed MIC", mic, miclen);
		return NULL;
	}
	pos += miclen;

	return pos;
}