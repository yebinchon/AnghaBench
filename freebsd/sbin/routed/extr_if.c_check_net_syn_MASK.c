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
struct rt_spare {scalar_t__ rts_metric; int /*<<< orphan*/  rts_router; int /*<<< orphan*/  rts_gate; struct interface* rts_ifp; } ;
struct rt_entry {int rt_state; scalar_t__ rt_metric; struct interface* rt_ifp; } ;
struct interface {scalar_t__ int_metric; int /*<<< orphan*/  int_std_mask; int /*<<< orphan*/  int_std_addr; int /*<<< orphan*/  int_state; int /*<<< orphan*/  int_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IS_NEED_NET_SYN ; 
 int RS_NET_SYN ; 
 int RS_NO_NET_SYN ; 
 scalar_t__ have_ripv1_in ; 
 scalar_t__ have_ripv1_out ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct rt_spare*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt_entry*) ; 
 struct rt_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct interface *ifp)
{
	struct rt_entry *rt;
	static struct rt_spare new;


	/* Turn on the need to automatically synthesize a network route
	 * for this interface only if we are running RIPv1 on some other
	 * interface that is on a different class-A,B,or C network.
	 */
	if (have_ripv1_out || have_ripv1_in) {
		ifp->int_state |= IS_NEED_NET_SYN;
		rt = FUNC3(ifp->int_std_addr, ifp->int_std_mask);
		if (rt != NULL
		    && 0 == (rt->rt_state & RS_NO_NET_SYN)
		    && (!(rt->rt_state & RS_NET_SYN)
			|| rt->rt_metric > ifp->int_metric)) {
			FUNC2(rt);
			rt = NULL;
		}
		if (rt == NULL) {
			new.rts_ifp = ifp;
			new.rts_gate = ifp->int_addr;
			new.rts_router = ifp->int_addr;
			new.rts_metric = ifp->int_metric;
			FUNC0(ifp->int_std_addr, ifp->int_std_mask,
			      RS_NET_SYN, &new);
		}

	} else {
		ifp->int_state &= ~IS_NEED_NET_SYN;

		rt = FUNC3(ifp->int_std_addr,
			   ifp->int_std_mask);
		if (rt != NULL
		    && (rt->rt_state & RS_NET_SYN)
		    && rt->rt_ifp == ifp)
			FUNC1(rt);
	}
}