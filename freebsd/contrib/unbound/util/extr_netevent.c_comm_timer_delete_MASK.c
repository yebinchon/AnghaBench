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
struct comm_timer {TYPE_1__* ev_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  ev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comm_timer*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void 
FUNC3(struct comm_timer* timer)
{
	if(!timer)
		return;
	FUNC0(timer);
	/* Free the sub struct timer->ev_timer derived from the super struct timer.
	 * i.e. assert(timer == timer->ev_timer)
	 */
	FUNC2(timer->ev_timer->ev);
	FUNC1(timer->ev_timer);
}