#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int /*<<< orphan*/  ifgr_name; } ;
struct ifg_req {char* ifgrq_group; } ;
typedef  int /*<<< orphan*/  ifgr2 ;
typedef  int /*<<< orphan*/  ifgr ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {char* key; int* data; } ;
typedef  TYPE_1__ ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FIND ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  SIOCGIFGMEMB ; 
 int /*<<< orphan*/  SIOCGIFGROUP ; 
 int /*<<< orphan*/  FUNC0 (struct ifgroupreq*,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifg_req*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (TYPE_1__,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  isgroup_map ; 
 int* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct ifgroupreq*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC12(char *ifa_name)
{
	int			 s, len;
	struct ifgroupreq	 ifgr;
	struct ifg_req		*ifg;

	s = FUNC4();

	/* Get size of group list for this interface */
	FUNC8(&ifgr, 0, sizeof(ifgr));
	FUNC11(ifgr.ifgr_name, ifa_name, IFNAMSIZ);
	if (FUNC6(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1)
		FUNC2(1, "SIOCGIFGROUP");

	/* Retrieve group list for this interface */
	len = ifgr.ifgr_len;
	ifgr.ifgr_groups =
	    (struct ifg_req *)FUNC1(len / sizeof(struct ifg_req),
		sizeof(struct ifg_req));
	if (ifgr.ifgr_groups == NULL)
		FUNC2(1, "calloc");
	if (FUNC6(s, SIOCGIFGROUP, (caddr_t)&ifgr) == -1)
		FUNC2(1, "SIOCGIFGROUP");

	ifg = ifgr.ifgr_groups;
	for (; ifg && len >= sizeof(struct ifg_req); ifg++) {
		len -= sizeof(struct ifg_req);
		if (FUNC9(ifg->ifgrq_group, "all")) {
			ENTRY	 		 item;
			ENTRY			*ret_item;
			int			*answer;
	
			item.key = ifg->ifgrq_group;
			if (FUNC5(item, FIND, &ret_item, &isgroup_map) == 0) {
				struct ifgroupreq	 ifgr2;

				/* Don't know the answer yet */
				if ((answer = FUNC7(sizeof(int))) == NULL)
					FUNC2(1, "malloc");

				FUNC0(&ifgr2, sizeof(ifgr2));
				FUNC11(ifgr2.ifgr_name, ifg->ifgrq_group,
				    sizeof(ifgr2.ifgr_name));
				if (FUNC6(s, SIOCGIFGMEMB, (caddr_t)&ifgr2) == 0)
					*answer = ifgr2.ifgr_len;
				else
					*answer = 0;

				item.key = FUNC10(ifg->ifgrq_group);
				item.data = answer;
				if (FUNC5(item, ENTER, &ret_item,
					&isgroup_map) == 0)
					FUNC2(1, "interface group query response"
					    " map insert");
			}
		}
	}
	FUNC3(ifgr.ifgr_groups);
}