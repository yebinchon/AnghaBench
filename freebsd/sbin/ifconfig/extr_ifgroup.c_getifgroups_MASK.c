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
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int /*<<< orphan*/  ifgr_name; } ;
struct ifg_req {char* ifgrq_group; } ;
typedef  int /*<<< orphan*/  ifgr ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOTTY ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFGROUP ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct ifg_req*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifgroupreq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int s)
{
	int			 len, cnt;
	struct ifgroupreq	 ifgr;
	struct ifg_req		*ifg;

	FUNC4(&ifgr, 0, sizeof(ifgr));
	FUNC7(ifgr.ifgr_name, name, IFNAMSIZ);

	if (FUNC3(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1) {
		if (errno == EINVAL || errno == ENOTTY)
			return;
		else
			FUNC1(1, "SIOCGIFGROUP");
	}

	len = ifgr.ifgr_len;
	ifgr.ifgr_groups =
	    (struct ifg_req *)FUNC0(len / sizeof(struct ifg_req),
	    sizeof(struct ifg_req));
	if (ifgr.ifgr_groups == NULL)
		FUNC1(1, "getifgroups");
	if (FUNC3(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1)
		FUNC1(1, "SIOCGIFGROUP");

	cnt = 0;
	ifg = ifgr.ifgr_groups;
	for (; ifg && len >= sizeof(struct ifg_req); ifg++) {
		len -= sizeof(struct ifg_req);
		if (FUNC6(ifg->ifgrq_group, "all")) {
			if (cnt == 0)
				FUNC5("\tgroups:");
			cnt++;
			FUNC5(" %s", ifg->ifgrq_group);
		}
	}
	if (cnt)
		FUNC5("\n");

	FUNC2(ifgr.ifgr_groups);
}