#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum vc_suspend_status { ____Placeholder_vc_suspend_status } vc_suspend_status ;
struct TYPE_4__ {int vc_suspend_state; int /*<<< orphan*/  vc_suspend_complete; int /*<<< orphan*/  vc_resume_complete; int /*<<< orphan*/  vc_resume_state; } ;
typedef  TYPE_1__ VCHIQ_ARM_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VC_RESUME_IDLE ; 
 int /*<<< orphan*/  VC_RESUME_RESUMED ; 
#define  VC_SUSPEND_FAILED 134 
#define  VC_SUSPEND_FORCE_CANCELED 133 
#define  VC_SUSPEND_IDLE 132 
#define  VC_SUSPEND_IN_PROGRESS 131 
#define  VC_SUSPEND_REJECTED 130 
#define  VC_SUSPEND_REQUESTED 129 
#define  VC_SUSPEND_SUSPENDED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(VCHIQ_ARM_STATE_T *arm_state,
	enum vc_suspend_status new_state)
{
	/* set the state in all cases */
	arm_state->vc_suspend_state = new_state;

	/* state specific additional actions */
	switch (new_state) {
	case VC_SUSPEND_FORCE_CANCELED:
		FUNC2(&arm_state->vc_suspend_complete);
		break;
	case VC_SUSPEND_REJECTED:
		FUNC2(&arm_state->vc_suspend_complete);
		break;
	case VC_SUSPEND_FAILED:
		FUNC2(&arm_state->vc_suspend_complete);
		arm_state->vc_resume_state = VC_RESUME_RESUMED;
		FUNC2(&arm_state->vc_resume_complete);
		break;
	case VC_SUSPEND_IDLE:
		/* TODO: reinit_completion */
		FUNC1(arm_state->vc_suspend_complete);
		break;
	case VC_SUSPEND_REQUESTED:
		break;
	case VC_SUSPEND_IN_PROGRESS:
		FUNC3(arm_state, VC_RESUME_IDLE);
		break;
	case VC_SUSPEND_SUSPENDED:
		FUNC2(&arm_state->vc_suspend_complete);
		break;
	default:
		FUNC0();
		break;
	}
}