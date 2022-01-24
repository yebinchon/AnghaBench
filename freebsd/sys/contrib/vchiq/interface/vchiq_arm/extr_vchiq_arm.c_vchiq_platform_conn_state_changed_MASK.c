#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  threadname ;
struct TYPE_6__ {int id; scalar_t__ conn_state; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
typedef  int /*<<< orphan*/  VCHIQ_CONNSTATE_T ;
struct TYPE_7__ {int first_connect; int /*<<< orphan*/  susp_res_lock; int /*<<< orphan*/ * ka_thread; } ;
typedef  TYPE_2__ VCHIQ_ARM_STATE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_CONNSTATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  vchiq_keepalive_thread_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  vchiq_susp_log_level ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(VCHIQ_STATE_T *state,
	VCHIQ_CONNSTATE_T oldstate, VCHIQ_CONNSTATE_T newstate)
{
	VCHIQ_ARM_STATE_T *arm_state = FUNC4(state);
	FUNC3(vchiq_susp_log_level, "%d: %s->%s", state->id,
		FUNC0(oldstate), FUNC0(newstate));
	if (state->conn_state == VCHIQ_CONNSTATE_CONNECTED) {
		FUNC7(&arm_state->susp_res_lock);
		if (!arm_state->first_connect) {
			char threadname[10];
			arm_state->first_connect = 1;
			FUNC8(&arm_state->susp_res_lock);
			FUNC1(threadname, sizeof(threadname), "VCHIQka-%d",
				state->id);
			arm_state->ka_thread = FUNC5(
				&vchiq_keepalive_thread_func,
				(void *)state,
				threadname);
			if (arm_state->ka_thread == NULL) {
				FUNC2(vchiq_susp_log_level,
					"vchiq: FATAL: couldn't create thread %s",
					threadname);
			} else {
				FUNC6(arm_state->ka_thread);
			}
		} else
			FUNC8(&arm_state->susp_res_lock);
	}
}