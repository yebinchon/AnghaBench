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
struct wpa_supplicant {char* ifname; int /*<<< orphan*/  p2p_group_idx; } ;

/* Variables and functions */
 scalar_t__ IFNAMSIZ ; 
 char* P2P_MGMT_DEVICE_PREFIX ; 
 int FUNC0 (char*,size_t,char*,char*,...) ; 
 scalar_t__ FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,scalar_t__) ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static void FUNC5(struct wpa_supplicant *wpa_s,
				      char *ifname, size_t len)
{
	char *ifname_ptr = wpa_s->ifname;

	if (FUNC3(wpa_s->ifname, P2P_MGMT_DEVICE_PREFIX,
		       FUNC2(P2P_MGMT_DEVICE_PREFIX)) == 0) {
		ifname_ptr = FUNC4(wpa_s->ifname, '-') + 1;
	}

	FUNC0(ifname, len, "p2p-%s-%d", ifname_ptr, wpa_s->p2p_group_idx);
	if (FUNC2(ifname) >= IFNAMSIZ &&
	    FUNC2(wpa_s->ifname) < IFNAMSIZ) {
		int res;

		/* Try to avoid going over the IFNAMSIZ length limit */
		res = FUNC0(ifname, len, "p2p-%d", wpa_s->p2p_group_idx);
		if (FUNC1(len, res) && len)
			ifname[len - 1] = '\0';
	}
}