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
struct eap_sm {int dummy; } ;
struct eap_fast_data {int /*<<< orphan*/ * simck; scalar_t__ simck_idx; } ;
typedef  int /*<<< orphan*/  isk ;
typedef  int /*<<< orphan*/  imck ;

/* Variables and functions */
 int EAP_FAST_CMK_LEN ; 
 int EAP_FAST_SIMCK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (struct eap_sm*,struct eap_fast_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct eap_sm *sm, struct eap_fast_data *data,
			    u8 *cmk)
{
	u8 isk[32], imck[60];

	FUNC4(MSG_DEBUG, "EAP-FAST: Determining CMK[%d] for Compound MIC "
		   "calculation", data->simck_idx + 1);

	/*
	 * RFC 4851, Section 5.2:
	 * IMCK[j] = T-PRF(S-IMCK[j-1], "Inner Methods Compound Keys",
	 *                 MSK[j], 60)
	 * S-IMCK[j] = first 40 octets of IMCK[j]
	 * CMK[j] = last 20 octets of IMCK[j]
	 */

	if (FUNC0(sm, data, isk, sizeof(isk)) < 0)
		return -1;
	FUNC3(MSG_MSGDUMP, "EAP-FAST: ISK[j]", isk, sizeof(isk));
	if (FUNC2(data->simck, EAP_FAST_SIMCK_LEN,
		       "Inner Methods Compound Keys",
		       isk, sizeof(isk), imck, sizeof(imck)) < 0)
		return -1;
	data->simck_idx++;
	FUNC1(data->simck, imck, EAP_FAST_SIMCK_LEN);
	FUNC3(MSG_MSGDUMP, "EAP-FAST: S-IMCK[j]",
			data->simck, EAP_FAST_SIMCK_LEN);
	FUNC1(cmk, imck + EAP_FAST_SIMCK_LEN, EAP_FAST_CMK_LEN);
	FUNC3(MSG_MSGDUMP, "EAP-FAST: CMK[j]",
			cmk, EAP_FAST_CMK_LEN);

	return 0;
}