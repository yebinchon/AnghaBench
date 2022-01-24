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
struct comm_timer {void (* callback ) (void*) ;void* cb_arg; struct internal_timer* ev_timer; } ;
struct internal_timer {struct comm_timer super; int /*<<< orphan*/ * ev; struct comm_base* base; } ;
struct comm_base {TYPE_1__* eb; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  UB_EV_TIMEOUT ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  comm_timer_callback ; 
 int /*<<< orphan*/  FUNC1 (struct internal_timer*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_timer*) ; 

struct comm_timer* 
FUNC4(struct comm_base* base, void (*cb)(void*), void* cb_arg)
{
	struct internal_timer *tm = (struct internal_timer*)FUNC0(1,
		sizeof(struct internal_timer));
	if(!tm) {
		FUNC2("malloc failed");
		return NULL;
	}
	tm->super.ev_timer = tm;
	tm->base = base;
	tm->super.callback = cb;
	tm->super.cb_arg = cb_arg;
	tm->ev = FUNC3(base->eb->base, -1, UB_EV_TIMEOUT, 
		comm_timer_callback, &tm->super);
	if(tm->ev == NULL) {
		FUNC2("timer_create: event_base_set failed.");
		FUNC1(tm);
		return NULL;
	}
	return &tm->super;
}