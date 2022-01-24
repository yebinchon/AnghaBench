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
 int /*<<< orphan*/  EAP_EMSK_LEN ; 
 int /*<<< orphan*/  EAP_FAST_SIMCK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(const u8 *simck, u8 *emsk)
{
	/*
	 * RFC 4851, Section 5.4: EAP Master Session Key Genreration
	 * EMSK = T-PRF(S-IMCK[j],
	 *        "Extended Session Key Generating Function", 64)
	 */

	if (FUNC0(simck, EAP_FAST_SIMCK_LEN,
		       "Extended Session Key Generating Function", (u8 *) "", 0,
		       emsk, EAP_EMSK_LEN) < 0)
		return -1;
	FUNC1(MSG_DEBUG, "EAP-FAST: Derived key (EMSK)",
			emsk, EAP_EMSK_LEN);
	return 0;
}