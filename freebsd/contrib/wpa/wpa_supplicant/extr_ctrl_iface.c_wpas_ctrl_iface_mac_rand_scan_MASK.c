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
struct wpa_supplicant {unsigned int mac_addr_rand_supported; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 unsigned int MAC_ADDR_RAND_PNO ; 
 unsigned int MAC_ADDR_RAND_SCAN ; 
 unsigned int MAC_ADDR_RAND_SCHED_SCAN ; 
 int /*<<< orphan*/  MSG_INFO ; 
 unsigned int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct wpa_supplicant*,unsigned int) ; 
 int FUNC7 (struct wpa_supplicant*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct wpa_supplicant *wpa_s,
					 char *cmd)
{
	char *token, *context = NULL;
	unsigned int enable = ~0, type = 0;
	u8 _addr[ETH_ALEN], _mask[ETH_ALEN];
	u8 *addr = NULL, *mask = NULL;

	while ((token = FUNC4(cmd, " ", &context))) {
		if (FUNC2(token, "scan") == 0) {
			type |= MAC_ADDR_RAND_SCAN;
		} else if (FUNC2(token, "sched") == 0) {
			type |= MAC_ADDR_RAND_SCHED_SCAN;
		} else if (FUNC2(token, "pno") == 0) {
			type |= MAC_ADDR_RAND_PNO;
		} else if (FUNC2(token, "all") == 0) {
			type = wpa_s->mac_addr_rand_supported;
		} else if (FUNC3(token, "enable=", 7) == 0) {
			enable = FUNC0(token + 7);
		} else if (FUNC3(token, "addr=", 5) == 0) {
			addr = _addr;
			if (FUNC1(token + 5, addr)) {
				FUNC5(MSG_INFO,
					   "CTRL: Invalid MAC address: %s",
					   token);
				return -1;
			}
		} else if (FUNC3(token, "mask=", 5) == 0) {
			mask = _mask;
			if (FUNC1(token + 5, mask)) {
				FUNC5(MSG_INFO,
					   "CTRL: Invalid MAC address mask: %s",
					   token);
				return -1;
			}
		} else {
			FUNC5(MSG_INFO,
				   "CTRL: Invalid MAC_RAND_SCAN parameter: %s",
				   token);
			return -1;
		}
	}

	if (!type) {
		FUNC5(MSG_INFO, "CTRL: MAC_RAND_SCAN no type specified");
		return -1;
	}

	if (enable > 1) {
		FUNC5(MSG_INFO,
			   "CTRL: MAC_RAND_SCAN enable=<0/1> not specified");
		return -1;
	}

	if (!enable)
		return FUNC6(wpa_s, type);

	return FUNC7(wpa_s, type, addr, mask);
}