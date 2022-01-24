#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct comm_timer {TYPE_3__* ev_timer; } ;
struct TYPE_6__ {int enabled; TYPE_2__* base; int /*<<< orphan*/  ev; } ;
struct TYPE_5__ {TYPE_1__* eb; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  comm_timer_callback ; 
 int /*<<< orphan*/  FUNC0 (struct comm_timer*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_timer*,struct timeval*) ; 

void 
FUNC4(struct comm_timer* timer, struct timeval* tv)
{
	FUNC1(tv);
	if(timer->ev_timer->enabled)
		FUNC0(timer);
	if(FUNC3(timer->ev_timer->ev, timer->ev_timer->base->eb->base,
		comm_timer_callback, timer, tv) != 0)
		FUNC2("comm_timer_set: evtimer_add failed.");
	timer->ev_timer->enabled = 1;
}