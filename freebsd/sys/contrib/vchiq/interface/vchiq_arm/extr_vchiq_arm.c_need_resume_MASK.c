#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATE_T ;
struct TYPE_3__ {scalar_t__ vc_suspend_state; scalar_t__ vc_resume_state; } ;
typedef  TYPE_1__ VCHIQ_ARM_STATE_T ;

/* Variables and functions */
 scalar_t__ VC_RESUME_REQUESTED ; 
 scalar_t__ VC_SUSPEND_IDLE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC2(VCHIQ_STATE_T *state)
{
	VCHIQ_ARM_STATE_T *arm_state = FUNC0(state);
	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
			(arm_state->vc_resume_state < VC_RESUME_REQUESTED) &&
			FUNC1(state);
}