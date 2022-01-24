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
typedef  int /*<<< orphan*/  key_buf ;

/* Variables and functions */
 int EAP_EMSK_LEN ; 
 int EAP_MSK_LEN ; 
 int /*<<< orphan*/  EAP_SAKE_RAND_LEN ; 
 int EAP_SAKE_ROOT_SECRET_LEN ; 
 int EAP_SAKE_SMS_LEN ; 
 int EAP_SAKE_TEK_AUTH_LEN ; 
 int EAP_SAKE_TEK_CIPHER_LEN ; 
 int EAP_SAKE_TEK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(const u8 *root_secret_a, const u8 *root_secret_b,
			 const u8 *rand_s, const u8 *rand_p, u8 *tek, u8 *msk,
			 u8 *emsk)
{
	u8 sms_a[EAP_SAKE_SMS_LEN];
	u8 sms_b[EAP_SAKE_SMS_LEN];
	u8 key_buf[EAP_MSK_LEN + EAP_EMSK_LEN];

	FUNC3(MSG_DEBUG, "EAP-SAKE: Deriving keys");

	FUNC2(MSG_DEBUG, "EAP-SAKE: Root-Secret-A",
			root_secret_a, EAP_SAKE_ROOT_SECRET_LEN);
	if (FUNC0(root_secret_a, EAP_SAKE_ROOT_SECRET_LEN,
			 "SAKE Master Secret A",
			 rand_p, EAP_SAKE_RAND_LEN, rand_s, EAP_SAKE_RAND_LEN,
			 sms_a, EAP_SAKE_SMS_LEN) < 0)
		return -1;
	FUNC2(MSG_DEBUG, "EAP-SAKE: SMS-A", sms_a, EAP_SAKE_SMS_LEN);
	if (FUNC0(sms_a, EAP_SAKE_SMS_LEN, "Transient EAP Key",
			 rand_s, EAP_SAKE_RAND_LEN, rand_p, EAP_SAKE_RAND_LEN,
			 tek, EAP_SAKE_TEK_LEN) < 0)
		return -1;
	FUNC2(MSG_DEBUG, "EAP-SAKE: TEK-Auth",
			tek, EAP_SAKE_TEK_AUTH_LEN);
	FUNC2(MSG_DEBUG, "EAP-SAKE: TEK-Cipher",
			tek + EAP_SAKE_TEK_AUTH_LEN, EAP_SAKE_TEK_CIPHER_LEN);

	FUNC2(MSG_DEBUG, "EAP-SAKE: Root-Secret-B",
			root_secret_b, EAP_SAKE_ROOT_SECRET_LEN);
	if (FUNC0(root_secret_b, EAP_SAKE_ROOT_SECRET_LEN,
			 "SAKE Master Secret B",
			 rand_p, EAP_SAKE_RAND_LEN, rand_s, EAP_SAKE_RAND_LEN,
			 sms_b, EAP_SAKE_SMS_LEN) < 0)
		return -1;
	FUNC2(MSG_DEBUG, "EAP-SAKE: SMS-B", sms_b, EAP_SAKE_SMS_LEN);
	if (FUNC0(sms_b, EAP_SAKE_SMS_LEN, "Master Session Key",
			 rand_s, EAP_SAKE_RAND_LEN, rand_p, EAP_SAKE_RAND_LEN,
			 key_buf, sizeof(key_buf)) < 0)
		return -1;
	FUNC1(msk, key_buf, EAP_MSK_LEN);
	FUNC1(emsk, key_buf + EAP_MSK_LEN, EAP_EMSK_LEN);
	FUNC2(MSG_DEBUG, "EAP-SAKE: MSK", msk, EAP_MSK_LEN);
	FUNC2(MSG_DEBUG, "EAP-SAKE: EMSK", emsk, EAP_EMSK_LEN);
	return 0;
}