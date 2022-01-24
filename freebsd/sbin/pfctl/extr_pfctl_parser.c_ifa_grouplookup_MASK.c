#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct node_host {TYPE_1__* tail; } ;
struct ifgroupreq {int ifgr_len; struct ifg_req* ifgr_groups; int /*<<< orphan*/  ifgr_name; } ;
struct ifg_req {int /*<<< orphan*/  ifgrq_member; } ;
typedef  int /*<<< orphan*/  ifgr ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {struct node_host* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGIFGMEMB ; 
 int /*<<< orphan*/  FUNC0 (struct ifgroupreq*,int) ; 
 struct ifg_req* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifg_req*) ; 
 int FUNC4 () ; 
 struct node_host* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

struct node_host *
FUNC9(char *ifa_name, int flags)
{
	struct ifg_req		*ifg;
	struct ifgroupreq	 ifgr;
	int			 s, len;
	struct node_host	*n, *h = NULL;

	s = FUNC4();
	len = FUNC7(ifa_name);
	if (len == 0)
		return (NULL);
	FUNC0(&ifgr, sizeof(ifgr));
	FUNC8(ifgr.ifgr_name, ifa_name, sizeof(ifgr.ifgr_name));
	ifgr.ifgr_len = len;
	if ((ifgr.ifgr_groups = FUNC1(1, len)) == NULL)
		FUNC2(1, "calloc");
	if (FUNC6(s, SIOCGIFGMEMB, (caddr_t)&ifgr) == -1)
		FUNC2(1, "SIOCGIFGMEMB");

	for (ifg = ifgr.ifgr_groups; ifg && len >= sizeof(struct ifg_req);
	    ifg++) {
		len -= sizeof(struct ifg_req);
		if ((n = FUNC5(ifg->ifgrq_member, flags)) == NULL)
			continue;
		if (h == NULL)
			h = n;
		else {
			h->tail->next = n;
			h->tail = n->tail;
		}
	}
	FUNC3(ifgr.ifgr_groups);

	return (h);
}