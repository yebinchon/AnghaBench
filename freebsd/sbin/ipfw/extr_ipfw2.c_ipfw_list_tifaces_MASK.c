#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int count; scalar_t__ objsize; } ;
typedef  TYPE_1__ ipfw_obj_lheader ;
struct TYPE_7__ {int flags; char* ifname; int ifindex; int refcnt; int gencnt; } ;
typedef  TYPE_2__ ipfw_iface_info ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int IPFW_IFFLAG_RESOLVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ifinfo_cmp ; 
 int FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5()
{
	ipfw_obj_lheader *olh;
	ipfw_iface_info *info;
	int i, error;

	if ((error = FUNC2(&olh)) != 0)
		FUNC0(EX_OSERR, "Unable to request ipfw tracked interface list");


	FUNC4(olh + 1, olh->count, olh->objsize, ifinfo_cmp);

	info = (ipfw_iface_info *)(olh + 1);
	for (i = 0; i < olh->count; i++) {
		if (info->flags & IPFW_IFFLAG_RESOLVED)
			FUNC3("%s ifindex: %d refcount: %u changes: %u\n",
			    info->ifname, info->ifindex, info->refcnt,
			    info->gencnt);
		else
			FUNC3("%s ifindex: unresolved refcount: %u changes: %u\n",
			    info->ifname, info->refcnt, info->gencnt);
		info = (ipfw_iface_info *)((caddr_t)info + olh->objsize);
	}

	FUNC1(olh);
}