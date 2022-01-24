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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ expires; } ;
struct TYPE_5__ {int suspend_timer_running; TYPE_3__ suspend_timer; int /*<<< orphan*/  suspend_timer_timeout; } ;
typedef  TYPE_1__ VCHIQ_ARM_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

inline void
FUNC3(VCHIQ_ARM_STATE_T *arm_state)
{
	FUNC1(&arm_state->suspend_timer);
	arm_state->suspend_timer.expires = jiffies +
		FUNC2(arm_state->
			suspend_timer_timeout);
	FUNC0(&arm_state->suspend_timer);
	arm_state->suspend_timer_running = 1;
}