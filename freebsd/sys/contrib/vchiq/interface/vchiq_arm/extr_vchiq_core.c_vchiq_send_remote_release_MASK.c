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
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
struct TYPE_4__ {scalar_t__ conn_state; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_CONNSTATE_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_MSG_REMOTE_RELEASE ; 
 int /*<<< orphan*/  VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VCHIQ_STATUS_T FUNC2(VCHIQ_STATE_T *state)
{
	VCHIQ_STATUS_T status = VCHIQ_RETRY;
	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
		status = FUNC1(state, NULL,
			FUNC0(VCHIQ_MSG_REMOTE_RELEASE, 0, 0),
			NULL, 0, 0, 0);
	return status;
}