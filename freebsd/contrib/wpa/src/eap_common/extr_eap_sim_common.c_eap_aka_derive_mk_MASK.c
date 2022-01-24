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
 size_t EAP_AKA_CK_LEN ; 
 size_t EAP_AKA_IK_LEN ; 
 size_t EAP_SIM_MK_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

void FUNC2(const u8 *identity, size_t identity_len,
		       const u8 *ik, const u8 *ck, u8 *mk)
{
	const u8 *addr[3];
	size_t len[3];

	addr[0] = identity;
	len[0] = identity_len;
	addr[1] = ik;
	len[1] = EAP_AKA_IK_LEN;
	addr[2] = ck;
	len[2] = EAP_AKA_CK_LEN;

	/* MK = SHA1(Identity|IK|CK) */
	FUNC0(3, addr, len, mk);
	FUNC1(MSG_DEBUG, "EAP-AKA: IK", ik, EAP_AKA_IK_LEN);
	FUNC1(MSG_DEBUG, "EAP-AKA: CK", ck, EAP_AKA_CK_LEN);
	FUNC1(MSG_DEBUG, "EAP-AKA: MK", mk, EAP_SIM_MK_LEN);
}