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
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; } ;
struct ifg_req {char* ifgrq_group; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; } ;
typedef  int /*<<< orphan*/  ifconfig_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifg_req*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ifgroupreq*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
	struct ifgroupreq ifgr;
	struct ifg_req *ifg;
	int len;
	int cnt = 0;

	if (FUNC2(lifh, ifa->ifa_name, &ifgr) != 0) {
		FUNC0(1, "Failed to get groups");
	}

	ifg = ifgr.ifgr_groups;
	len = ifgr.ifgr_len;
	for (; ifg && len >= sizeof(struct ifg_req); ifg++) {
		len -= sizeof(struct ifg_req);
		if (FUNC4(ifg->ifgrq_group, "all")) {
			if (cnt == 0) {
				FUNC3("\tgroups: ");
			}
			cnt++;
			FUNC3("%s ", ifg->ifgrq_group);
		}
	}
	if (cnt) {
		FUNC3("\n");
	}

	FUNC1(ifgr.ifgr_groups);
}