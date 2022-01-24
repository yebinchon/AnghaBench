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
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct pending {struct pending* pkt; scalar_t__ timer; TYPE_1__ node; struct pending* next_waiting; } ;
struct outside_network {int /*<<< orphan*/  pending; struct pending* udp_wait_last; struct pending* udp_wait_first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct pending*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC4(struct outside_network* outnet, struct pending* p)
{
	if(!p)
		return;
	if(outnet && outnet->udp_wait_first &&
		(p->next_waiting || p == outnet->udp_wait_last) ) {
		/* delete from waiting list, if it is in the waiting list */
		struct pending* prev = NULL, *x = outnet->udp_wait_first;
		while(x && x != p) {
			prev = x;
			x = x->next_waiting;
		}
		if(x) {
			FUNC2(x == p);
			if(prev)
				prev->next_waiting = p->next_waiting;
			else	outnet->udp_wait_first = p->next_waiting;
			if(outnet->udp_wait_last == p)
				outnet->udp_wait_last = prev;
		}
	}
	if(outnet) {
		(void)FUNC3(outnet->pending, p->node.key);
	}
	if(p->timer)
		FUNC0(p->timer);
	FUNC1(p->pkt);
	FUNC1(p);
}