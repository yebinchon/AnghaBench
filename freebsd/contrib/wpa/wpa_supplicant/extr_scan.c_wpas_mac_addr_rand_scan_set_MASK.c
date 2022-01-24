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
struct wpa_supplicant {unsigned int mac_addr_rand_supported; unsigned int mac_addr_rand_enable; int /*<<< orphan*/ * mac_addr_pno; int /*<<< orphan*/ * mac_addr_sched_scan; int /*<<< orphan*/ * mac_addr_scan; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 unsigned int MAC_ADDR_RAND_PNO ; 
 unsigned int MAC_ADDR_RAND_SCAN ; 
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,unsigned int) ; 

int FUNC5(struct wpa_supplicant *wpa_s,
				unsigned int type, const u8 *addr,
				const u8 *mask)
{
	u8 *tmp = NULL;

	if ((wpa_s->mac_addr_rand_supported & type) != type ) {
		FUNC3(MSG_INFO,
			   "scan: MAC randomization type %u != supported=%u",
			   type, wpa_s->mac_addr_rand_supported);
		return -1;
	}

	FUNC4(wpa_s, type);

	if (addr) {
		tmp = FUNC1(2 * ETH_ALEN);
		if (!tmp)
			return -1;
		FUNC2(tmp, addr, ETH_ALEN);
		FUNC2(tmp + ETH_ALEN, mask, ETH_ALEN);
	}

	if (type == MAC_ADDR_RAND_SCAN) {
		wpa_s->mac_addr_scan = tmp;
	} else if (type == MAC_ADDR_RAND_SCHED_SCAN) {
		wpa_s->mac_addr_sched_scan = tmp;
	} else if (type == MAC_ADDR_RAND_PNO) {
		wpa_s->mac_addr_pno = tmp;
	} else {
		FUNC3(MSG_INFO,
			   "scan: Invalid MAC randomization type=0x%x",
			   type);
		FUNC0(tmp);
		return -1;
	}

	wpa_s->mac_addr_rand_enable |= type;
	return 0;
}