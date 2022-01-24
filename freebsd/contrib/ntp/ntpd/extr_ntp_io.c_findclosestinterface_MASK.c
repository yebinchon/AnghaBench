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
struct TYPE_4__ {scalar_t__ family; int flags; int /*<<< orphan*/  sin; scalar_t__ ignore_packets; struct TYPE_4__* elink; } ;
typedef  TYPE_1__ endpt ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* ep_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

endpt *
FUNC6(
	sockaddr_u *	addr,
	int		flags
	)
{
	endpt *		ep;
	endpt *		winner;
	sockaddr_u	addr_dist;
	sockaddr_u	min_dist;

	FUNC2(&min_dist);
	winner = NULL;

	for (ep = ep_list; ep != NULL; ep = ep->elink) {
		if (ep->ignore_packets ||
		    FUNC0(addr) != ep->family ||
		    flags & ep->flags)
			continue;

		FUNC3(&addr_dist, addr, &ep->sin);
		if (NULL == winner ||
		    -1 == FUNC4(&addr_dist, &min_dist)) {
			min_dist = addr_dist;
			winner = ep;
		}
	}
	if (NULL == winner)
		FUNC1(4, ("findclosestinterface(%s) failed\n",
			    FUNC5(addr)));
	else
		FUNC1(4, ("findclosestinterface(%s) -> %s\n",
			    FUNC5(addr), FUNC5(&winner->sin)));

	return winner;
}