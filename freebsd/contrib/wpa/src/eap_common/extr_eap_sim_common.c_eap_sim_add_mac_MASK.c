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

/* Variables and functions */
 int /*<<< orphan*/  EAP_SIM_K_AUT_LEN ; 
 size_t EAP_SIM_MAC_LEN ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int SHA1_MAC_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,size_t*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC5(const u8 *k_aut, const u8 *msg, size_t msg_len, u8 *mac,
		     const u8 *extra, size_t extra_len)
{
	unsigned char hmac[SHA1_MAC_LEN];
	const u8 *addr[2];
	size_t len[2];

	addr[0] = msg;
	len[0] = msg_len;
	addr[1] = extra;
	len[1] = extra_len;

	/* HMAC-SHA1-128 */
	FUNC2(mac, 0, EAP_SIM_MAC_LEN);
	FUNC3(MSG_MSGDUMP, "EAP-SIM: Add MAC - msg", msg, msg_len);
	FUNC3(MSG_MSGDUMP, "EAP-SIM: Add MAC - extra data",
		    extra, extra_len);
	FUNC4(MSG_MSGDUMP, "EAP-SIM: Add MAC - K_aut",
			k_aut, EAP_SIM_K_AUT_LEN);
	FUNC0(k_aut, EAP_SIM_K_AUT_LEN, 2, addr, len, hmac);
	FUNC1(mac, hmac, EAP_SIM_MAC_LEN);
	FUNC3(MSG_MSGDUMP, "EAP-SIM: Add MAC: MAC",
		    mac, EAP_SIM_MAC_LEN);
}