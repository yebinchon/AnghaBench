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
typedef  int u8 ;
struct wpa_supplicant {scalar_t__ pno; scalar_t__ sched_scanning; } ;

/* Variables and functions */
 unsigned int MAC_ADDR_RAND_PNO ; 
 unsigned int MAC_ADDR_RAND_SCAN ; 
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,unsigned int,int const*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*) ; 

int FUNC5(struct wpa_supplicant *wpa_s,
				       unsigned int type, const u8 *addr,
				       const u8 *mask)
{
	if ((addr && !mask) || (!addr && mask)) {
		FUNC0(MSG_INFO,
			   "MAC_ADDR_RAND_SCAN invalid addr/mask combination");
		return -1;
	}

	if (addr && mask && (!(mask[0] & 0x01) || (addr[0] & 0x01))) {
		FUNC0(MSG_INFO,
			   "MAC_ADDR_RAND_SCAN cannot allow multicast address");
		return -1;
	}

	if (type & MAC_ADDR_RAND_SCAN) {
		if (FUNC1(wpa_s, MAC_ADDR_RAND_SCAN,
						addr, mask))
			return -1;
	}

	if (type & MAC_ADDR_RAND_SCHED_SCAN) {
		if (FUNC1(wpa_s, MAC_ADDR_RAND_SCHED_SCAN,
						addr, mask))
			return -1;

		if (wpa_s->sched_scanning && !wpa_s->pno)
			FUNC2(wpa_s);
	}

	if (type & MAC_ADDR_RAND_PNO) {
		if (FUNC1(wpa_s, MAC_ADDR_RAND_PNO,
						addr, mask))
			return -1;

		if (wpa_s->pno) {
			FUNC4(wpa_s);
			FUNC3(wpa_s);
		}
	}

	return 0;
}