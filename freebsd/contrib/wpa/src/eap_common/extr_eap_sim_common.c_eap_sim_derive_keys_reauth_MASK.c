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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EAP_EMSK_LEN ; 
 int EAP_SIM_KEYING_DATA_LEN ; 
 size_t EAP_SIM_MK_LEN ; 
 int EAP_SIM_NONCE_S_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int SHA1_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__ const**,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__ const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

int FUNC9(u16 _counter,
			       const u8 *identity, size_t identity_len,
			       const u8 *nonce_s, const u8 *mk, u8 *msk,
			       u8 *emsk)
{
	u8 xkey[SHA1_MAC_LEN];
	u8 buf[EAP_SIM_KEYING_DATA_LEN + EAP_EMSK_LEN + 32];
	u8 counter[2];
	const u8 *addr[4];
	size_t len[4];

	while (identity_len > 0 && identity[identity_len - 1] == 0) {
		FUNC8(MSG_DEBUG, "EAP-SIM: Workaround - drop null "
			   "character from the end of identity");
		identity_len--;
	}
	addr[0] = identity;
	len[0] = identity_len;
	addr[1] = counter;
	len[1] = 2;
	addr[2] = nonce_s;
	len[2] = EAP_SIM_NONCE_S_LEN;
	addr[3] = mk;
	len[3] = EAP_SIM_MK_LEN;

	FUNC0(counter, _counter);

	FUNC8(MSG_DEBUG, "EAP-SIM: Deriving keying data from reauth");
	FUNC6(MSG_DEBUG, "EAP-SIM: Identity",
			  identity, identity_len);
	FUNC5(MSG_DEBUG, "EAP-SIM: counter", counter, 2);
	FUNC5(MSG_DEBUG, "EAP-SIM: NONCE_S", nonce_s,
		    EAP_SIM_NONCE_S_LEN);
	FUNC7(MSG_DEBUG, "EAP-SIM: MK", mk, EAP_SIM_MK_LEN);

	/* XKEY' = SHA1(Identity|counter|NONCE_S|MK) */
	FUNC4(4, addr, len, xkey);
	FUNC5(MSG_DEBUG, "EAP-SIM: XKEY'", xkey, SHA1_MAC_LEN);

	if (FUNC1(xkey, buf, sizeof(buf)) < 0) {
		FUNC8(MSG_ERROR, "EAP-SIM: Failed to derive keys");
		return -1;
	}
	if (msk) {
		FUNC2(msk, buf, EAP_SIM_KEYING_DATA_LEN);
		FUNC5(MSG_DEBUG, "EAP-SIM: keying material (MSK)",
			    msk, EAP_SIM_KEYING_DATA_LEN);
	}
	if (emsk) {
		FUNC2(emsk, buf + EAP_SIM_KEYING_DATA_LEN, EAP_EMSK_LEN);
		FUNC5(MSG_DEBUG, "EAP-SIM: EMSK", emsk, EAP_EMSK_LEN);
	}
	FUNC3(buf, 0, sizeof(buf));

	return 0;
}