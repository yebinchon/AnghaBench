#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* addr; void* addr6; } ;
struct TYPE_8__ {void* addr; void* addr6; } ;
struct TYPE_7__ {void* addr; void* addr6; } ;
struct info_if_stats {int v6_flag; int /*<<< orphan*/  action; void* peercnt; int /*<<< orphan*/  ignore_packets; void* uptime; void* ifnum; void* ifindex; void* scopeid; void* notsent; void* sent; void* received; void* num_mcast; void* last_ttl; void* flags; int /*<<< orphan*/  family; int /*<<< orphan*/  name; TYPE_3__ unmask; TYPE_2__ unbcast; TYPE_1__ unaddr; } ;
struct TYPE_10__ {int /*<<< orphan*/  action; TYPE_5__* ep; } ;
typedef  TYPE_4__ interface_info_t ;
struct TYPE_11__ {int flags; int last_ttl; int num_mcast; int received; int sent; int notsent; int ifindex; int ifnum; int starttime; int peercnt; int /*<<< orphan*/  ignore_packets; int /*<<< orphan*/  family; int /*<<< orphan*/  name; int /*<<< orphan*/  mask; int /*<<< orphan*/  bcast; int /*<<< orphan*/  sin; } ;
typedef  TYPE_5__ endpt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct info_if_stats) ; 
 int /*<<< orphan*/  client_v6_capable ; 
 int current_time ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(void *data, interface_info_t *interface_info)
{
	struct info_if_stats **ifsp = (struct info_if_stats **)data;
	struct info_if_stats *ifs = *ifsp;
	endpt *ep = interface_info->ep;

	if (NULL == ifs)
		return;
	
	FUNC3(*ifs);
	
	if (FUNC0(&ep->sin)) {
		if (!client_v6_capable)
			return;
		ifs->v6_flag = 1;
		ifs->unaddr.addr6 = FUNC2(&ep->sin);
		ifs->unbcast.addr6 = FUNC2(&ep->bcast);
		ifs->unmask.addr6 = FUNC2(&ep->mask);
	} else {
		ifs->v6_flag = 0;
		ifs->unaddr.addr = FUNC1(&ep->sin);
		ifs->unbcast.addr = FUNC1(&ep->bcast);
		ifs->unmask.addr = FUNC1(&ep->mask);
	}
	ifs->v6_flag = FUNC4(ifs->v6_flag);
	FUNC7(ifs->name, ep->name, sizeof(ifs->name));
	ifs->family = FUNC5(ep->family);
	ifs->flags = FUNC4(ep->flags);
	ifs->last_ttl = FUNC4(ep->last_ttl);
	ifs->num_mcast = FUNC4(ep->num_mcast);
	ifs->received = FUNC4(ep->received);
	ifs->sent = FUNC4(ep->sent);
	ifs->notsent = FUNC4(ep->notsent);
	ifs->ifindex = FUNC4(ep->ifindex);
	/* scope no longer in endpt, in in6_addr typically */
	ifs->scopeid = ifs->ifindex;
	ifs->ifnum = FUNC4(ep->ifnum);
	ifs->uptime = FUNC4(current_time - ep->starttime);
	ifs->ignore_packets = ep->ignore_packets;
	ifs->peercnt = FUNC4(ep->peercnt);
	ifs->action = interface_info->action;
	
	*ifsp = (struct info_if_stats *)FUNC6();
}