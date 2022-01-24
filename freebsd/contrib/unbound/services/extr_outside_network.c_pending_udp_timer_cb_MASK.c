#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pending {TYPE_1__* pc; TYPE_2__* timer; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  cb_arg; struct outside_network* outnet; } ;
struct outside_network {int /*<<< orphan*/  delay_tv; int /*<<< orphan*/  udp_wait_first; scalar_t__ delayclose; } ;
struct TYPE_4__ {int /*<<< orphan*/ * callback; } ;
struct TYPE_3__ {int /*<<< orphan*/  cp; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_TIMEOUT ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC3 (struct outside_network*) ; 
 int /*<<< orphan*/  FUNC4 (struct outside_network*,struct pending*) ; 
 int /*<<< orphan*/  pending_udp_timer_delay_cb ; 
 int /*<<< orphan*/  FUNC5 (struct outside_network*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void 
FUNC8(void *arg)
{
	struct pending* p = (struct pending*)arg;
	struct outside_network* outnet = p->outnet;
	/* it timed out */
	FUNC7(VERB_ALGO, "timeout udp");
	if(p->cb) {
		FUNC1(FUNC2(p->cb));
		(void)(*p->cb)(p->pc->cp, p->cb_arg, NETEVENT_TIMEOUT, NULL);
	}
	/* if delayclose, keep port open for a longer time.
	 * But if the udpwaitlist exists, then we are struggling to
	 * keep up with demand for sockets, so do not wait, but service
	 * the customer (customer service more important than portICMPs) */
	if(outnet->delayclose && !outnet->udp_wait_first) {
		p->cb = NULL;
		p->timer->callback = &pending_udp_timer_delay_cb;
		FUNC0(p->timer, &outnet->delay_tv);
		return;
	}
	FUNC5(outnet, p->pc);
	FUNC4(outnet, p);
	FUNC3(outnet);
}