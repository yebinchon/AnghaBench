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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EAP_EMSK_LEN ; 
 int EAP_SIM_KEYING_DATA_LEN ; 
 int EAP_SIM_K_AUT_LEN ; 
 int EAP_SIM_K_ENCR_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int FUNC5(const u8 *mk, u8 *k_encr, u8 *k_aut, u8 *msk, u8 *emsk)
{
	u8 buf[EAP_SIM_K_ENCR_LEN + EAP_SIM_K_AUT_LEN +
	       EAP_SIM_KEYING_DATA_LEN + EAP_EMSK_LEN], *pos;
	if (FUNC0(mk, buf, sizeof(buf)) < 0) {
		FUNC4(MSG_ERROR, "EAP-SIM: Failed to derive keys");
		return -1;
	}
	pos = buf;
	FUNC1(k_encr, pos, EAP_SIM_K_ENCR_LEN);
	pos += EAP_SIM_K_ENCR_LEN;
	FUNC1(k_aut, pos, EAP_SIM_K_AUT_LEN);
	pos += EAP_SIM_K_AUT_LEN;
	FUNC1(msk, pos, EAP_SIM_KEYING_DATA_LEN);
	pos += EAP_SIM_KEYING_DATA_LEN;
	FUNC1(emsk, pos, EAP_EMSK_LEN);

	FUNC3(MSG_DEBUG, "EAP-SIM: K_encr",
			k_encr, EAP_SIM_K_ENCR_LEN);
	FUNC3(MSG_DEBUG, "EAP-SIM: K_aut",
			k_aut, EAP_SIM_K_AUT_LEN);
	FUNC3(MSG_DEBUG, "EAP-SIM: keying material (MSK)",
			msk, EAP_SIM_KEYING_DATA_LEN);
	FUNC3(MSG_DEBUG, "EAP-SIM: EMSK", emsk, EAP_EMSK_LEN);
	FUNC2(buf, 0, sizeof(buf));

	return 0;
}