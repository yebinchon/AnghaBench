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

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_KEY_LEN ; 
 int /*<<< orphan*/  EAP_TEAP_SIMCK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(const u8 *simck, u8 *msk)
{
	/*
	 * RFC 7170, Section 5.4: EAP Master Session Key Generation
	 * MSK = TLS-PRF(S-IMCK[j], "Session Key Generating Function", 64)
	 */

	if (FUNC0(simck, EAP_TEAP_SIMCK_LEN,
			     "Session Key Generating Function", (u8 *) "", 0,
			     msk, EAP_TEAP_KEY_LEN) < 0)
		return -1;
	FUNC1(MSG_DEBUG, "EAP-TEAP: Derived key (MSK)",
			msk, EAP_TEAP_KEY_LEN);
	return 0;
}