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
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_4__ {int /*<<< orphan*/ * ep; int /*<<< orphan*/  addr; } ;
typedef  TYPE_1__ remaddr_t ;
typedef  int /*<<< orphan*/  endpt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  remoteaddr_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(
	sockaddr_u *	addr,
	endpt *		ep
	)
{
	remaddr_t *laddr;

#ifdef DEBUG
	if (find_addr_in_list(addr) == NULL) {
#endif
		/* not there yet - add to list */
		laddr = FUNC2(sizeof(*laddr));
		laddr->addr = *addr;
		laddr->ep = ep;

		FUNC1(remoteaddr_list, laddr, link);

		FUNC0(4, ("Added addr %s to list of addresses\n",
			    FUNC4(addr)));
#ifdef DEBUG
	} else
		DPRINTF(4, ("WARNING: Attempt to add duplicate addr %s to address list\n",
			    stoa(addr)));
#endif
}