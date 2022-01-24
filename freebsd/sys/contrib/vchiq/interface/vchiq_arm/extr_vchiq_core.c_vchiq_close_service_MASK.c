#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_8__ {size_t srvstate; int /*<<< orphan*/  localport; TYPE_4__* state; int /*<<< orphan*/  remove_event; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_9__ {scalar_t__ slot_handler_thread; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHIQ_POLL_TERMINATE ; 
 scalar_t__ VCHIQ_RETRY ; 
 size_t VCHIQ_SRVSTATE_FREE ; 
 size_t VCHIQ_SRVSTATE_HIDDEN ; 
 size_t VCHIQ_SRVSTATE_LISTENING ; 
 size_t VCHIQ_SRVSTATE_OPEN ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VCHIQ_STATUS_T
FUNC9(VCHIQ_SERVICE_HANDLE_T handle)
{
	/* Unregister the service */
	VCHIQ_SERVICE_T *service = FUNC2(handle);
	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;

	if (!service)
		return VCHIQ_ERROR;

	FUNC7(vchiq_core_log_level,
		"%d: close_service:%d",
		service->state->id, service->localport);

	if ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
		(service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
		(service->srvstate == VCHIQ_SRVSTATE_HIDDEN)) {
		FUNC5(service);
		return VCHIQ_ERROR;
	}

	FUNC3(service);

	if (current == service->state->slot_handler_thread) {
		status = FUNC6(service,
			0/*!close_recvd*/);
		FUNC0(status == VCHIQ_RETRY);
	} else {
	/* Mark the service for termination by the slot handler */
		FUNC4(service->state, service, VCHIQ_POLL_TERMINATE);
	}

	while (1) {
		if (FUNC1(&service->remove_event) != 0) {
			status = VCHIQ_RETRY;
			break;
		}

		if ((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
			(service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
			(service->srvstate == VCHIQ_SRVSTATE_OPEN))
			break;

		FUNC8(vchiq_core_log_level,
			"%d: close_service:%d - waiting in state %s",
			service->state->id, service->localport,
			srvstate_names[service->srvstate]);
	}

	if ((status == VCHIQ_SUCCESS) &&
		(service->srvstate != VCHIQ_SRVSTATE_FREE) &&
		(service->srvstate != VCHIQ_SRVSTATE_LISTENING))
		status = VCHIQ_ERROR;

	FUNC5(service);

	return status;
}