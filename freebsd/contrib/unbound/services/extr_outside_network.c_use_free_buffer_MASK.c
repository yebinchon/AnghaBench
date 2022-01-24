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
struct waiting_tcp {void* cb_arg; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  pkt_len; int /*<<< orphan*/  pkt; struct waiting_tcp* next_waiting; } ;
struct outside_network {struct waiting_tcp* tcp_wait_last; struct waiting_tcp* tcp_wait_first; int /*<<< orphan*/  want_to_quit; scalar_t__ tcp_free; } ;
typedef  int /*<<< orphan*/  (* comm_point_callback_type ) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC2 (struct waiting_tcp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct waiting_tcp*) ; 

__attribute__((used)) static void
FUNC5(struct outside_network* outnet)
{
	struct waiting_tcp* w;
	while(outnet->tcp_free && outnet->tcp_wait_first 
		&& !outnet->want_to_quit) {
		w = outnet->tcp_wait_first;
		outnet->tcp_wait_first = w->next_waiting;
		if(outnet->tcp_wait_last == w)
			outnet->tcp_wait_last = NULL;
		if(!FUNC2(w, w->pkt, w->pkt_len)) {
			comm_point_callback_type* cb = &w->cb;
			void* cb_arg = w->cb_arg;
			FUNC4(w);
			FUNC0(FUNC1(*cb));
			(void)(*cb)(NULL, cb_arg, NETEVENT_CLOSED, NULL);
		}
	}
}