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
 int /*<<< orphan*/  EAP_PAX_AK_LEN ; 
 int /*<<< orphan*/  EAP_PAX_CK_LEN ; 
 int /*<<< orphan*/  EAP_PAX_ICK_LEN ; 
 int /*<<< orphan*/  EAP_PAX_MID_LEN ; 
 int /*<<< orphan*/  EAP_PAX_MK_LEN ; 
 int EAP_PAX_RAND_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(u8 mac_id, const u8 *ak, const u8 *e,
				   u8 *mk, u8 *ck, u8 *ick, u8 *mid)
{
	FUNC2(MSG_DEBUG, "EAP-PAX: initial key derivation");
	if (FUNC0(mac_id, ak, EAP_PAX_AK_LEN, "Master Key",
			e, 2 * EAP_PAX_RAND_LEN, EAP_PAX_MK_LEN, mk) ||
	    FUNC0(mac_id, mk, EAP_PAX_MK_LEN, "Confirmation Key",
			e, 2 * EAP_PAX_RAND_LEN, EAP_PAX_CK_LEN, ck) ||
	    FUNC0(mac_id, mk, EAP_PAX_MK_LEN, "Integrity Check Key",
			e, 2 * EAP_PAX_RAND_LEN, EAP_PAX_ICK_LEN, ick) ||
	    FUNC0(mac_id, mk, EAP_PAX_MK_LEN, "Method ID",
			e, 2 * EAP_PAX_RAND_LEN, EAP_PAX_MID_LEN, mid))
		return -1;

	FUNC1(MSG_MSGDUMP, "EAP-PAX: AK", ak, EAP_PAX_AK_LEN);
	FUNC1(MSG_MSGDUMP, "EAP-PAX: MK", mk, EAP_PAX_MK_LEN);
	FUNC1(MSG_MSGDUMP, "EAP-PAX: CK", ck, EAP_PAX_CK_LEN);
	FUNC1(MSG_MSGDUMP, "EAP-PAX: ICK", ick, EAP_PAX_ICK_LEN);
	FUNC1(MSG_MSGDUMP, "EAP-PAX: MID", mid, EAP_PAX_MID_LEN);

	return 0;
}