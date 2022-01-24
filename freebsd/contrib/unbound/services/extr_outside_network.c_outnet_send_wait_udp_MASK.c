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
struct pending {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  timeout; scalar_t__ pkt_len; int /*<<< orphan*/ * pkt; struct pending* next_waiting; } ;
struct outside_network {TYPE_1__* unused_fds; int /*<<< orphan*/  udp_buff; int /*<<< orphan*/ * udp_wait_last; struct pending* udp_wait_first; int /*<<< orphan*/  want_to_quit; } ;
struct TYPE_2__ {int /*<<< orphan*/  cp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct outside_network*,struct pending*) ; 
 int /*<<< orphan*/  FUNC4 (struct pending*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct outside_network* outnet)
{
	struct pending* pend;
	/* process waiting queries */
	while(outnet->udp_wait_first && outnet->unused_fds 
		&& !outnet->want_to_quit) {
		pend = outnet->udp_wait_first;
		outnet->udp_wait_first = pend->next_waiting;
		if(!pend->next_waiting) outnet->udp_wait_last = NULL;
		FUNC5(outnet->udp_buff);
		FUNC7(outnet->udp_buff, pend->pkt, pend->pkt_len);
		FUNC6(outnet->udp_buff);
		FUNC2(pend->pkt); /* freeing now makes get_mem correct */
		pend->pkt = NULL; 
		pend->pkt_len = 0;
		if(!FUNC4(pend, outnet->udp_buff,
			pend->timeout)) {
			/* callback error on pending */
			if(pend->cb) {
				FUNC0(FUNC1(pend->cb));
				(void)(*pend->cb)(outnet->unused_fds->cp, pend->cb_arg, 
					NETEVENT_CLOSED, NULL);
			}
			FUNC3(outnet, pend);
		}
	}
}