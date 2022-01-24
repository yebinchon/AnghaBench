#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
struct TYPE_6__ {int conn_state; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;

/* Variables and functions */
#define  VCHIQ_CONNSTATE_CONNECTED 128 
 int /*<<< orphan*/  VCHIQ_CONNSTATE_PAUSING ; 
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 int /*<<< orphan*/ * conn_state_names ; 
 int /*<<< orphan*/  error_count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

VCHIQ_STATUS_T
FUNC4(VCHIQ_STATE_T *state)
{
	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

	switch (state->conn_state) {
	case VCHIQ_CONNSTATE_CONNECTED:
		/* Request a pause */
		FUNC3(state, VCHIQ_CONNSTATE_PAUSING);
		FUNC1(state, NULL, 0);
		break;
	default:
		FUNC2(vchiq_core_log_level,
			"vchiq_pause_internal in state %s\n",
			conn_state_names[state->conn_state]);
		status = VCHIQ_ERROR;
		FUNC0(state, error_count);
		break;
	}

	return status;
}