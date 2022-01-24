#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
struct TYPE_11__ {int /*<<< orphan*/  is_master; int /*<<< orphan*/  sync_mutex; int /*<<< orphan*/  slot_mutex; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_12__ {scalar_t__ public_fourcc; size_t srvstate; int /*<<< orphan*/  sync; int /*<<< orphan*/  remoteport; int /*<<< orphan*/  localport; int /*<<< orphan*/  remove_event; int /*<<< orphan*/  client_id; TYPE_1__* state; } ;
typedef  TYPE_2__ VCHIQ_SERVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  QMFLAGS_NO_MUTEX_UNLOCK ; 
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 scalar_t__ VCHIQ_FOURCC_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_MSG_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_PORT_FREE ; 
 int /*<<< orphan*/  VCHIQ_RETRY ; 
#define  VCHIQ_SRVSTATE_CLOSED 136 
#define  VCHIQ_SRVSTATE_CLOSERECVD 135 
#define  VCHIQ_SRVSTATE_CLOSESENT 134 
#define  VCHIQ_SRVSTATE_CLOSEWAIT 133 
#define  VCHIQ_SRVSTATE_HIDDEN 132 
#define  VCHIQ_SRVSTATE_LISTENING 131 
#define  VCHIQ_SRVSTATE_OPEN 130 
#define  VCHIQ_SRVSTATE_OPENING 129 
#define  VCHIQ_SRVSTATE_OPENSYNC 128 
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * srvstate_names ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int const) ; 

VCHIQ_STATUS_T
FUNC13(VCHIQ_SERVICE_T *service, int close_recvd)
{
	VCHIQ_STATE_T *state = service->state;
	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);

	FUNC11(vchiq_core_log_level, "%d: csi:%d,%d (%s)",
		service->state->id, service->localport, close_recvd,
		srvstate_names[service->srvstate]);

	switch (service->srvstate) {
	case VCHIQ_SRVSTATE_CLOSED:
	case VCHIQ_SRVSTATE_HIDDEN:
	case VCHIQ_SRVSTATE_LISTENING:
	case VCHIQ_SRVSTATE_CLOSEWAIT:
		if (close_recvd)
			FUNC10(vchiq_core_log_level,
				"vchiq_close_service_internal(1) called "
				"in state %s",
				srvstate_names[service->srvstate]);
		else if (is_server) {
			if (service->srvstate == VCHIQ_SRVSTATE_LISTENING) {
				status = VCHIQ_ERROR;
			} else {
				service->client_id = 0;
				service->remoteport = VCHIQ_PORT_FREE;
				if (service->srvstate ==
					VCHIQ_SRVSTATE_CLOSEWAIT)
					FUNC12(service,
						VCHIQ_SRVSTATE_LISTENING);
			}
			FUNC8(&service->remove_event);
		} else
			FUNC9(service);
		break;
	case VCHIQ_SRVSTATE_OPENING:
		if (close_recvd) {
			/* The open was rejected - tell the user */
			FUNC12(service,
				VCHIQ_SRVSTATE_CLOSEWAIT);
			FUNC8(&service->remove_event);
		} else {
			/* Shutdown mid-open - let the other side know */
			status = FUNC6(state, service,
				FUNC0
				(VCHIQ_MSG_CLOSE,
				service->localport,
				FUNC1(service->remoteport)),
				NULL, 0, 0, 0);
		}
		break;

	case VCHIQ_SRVSTATE_OPENSYNC:
		FUNC4(&state->sync_mutex);
		/* Drop through */

	case VCHIQ_SRVSTATE_OPEN:
		if (state->is_master || close_recvd) {
			if (!FUNC3(service))
				status = VCHIQ_RETRY;
		}

		FUNC7(service);

		if (status == VCHIQ_SUCCESS)
			status = FUNC6(state, service,
				FUNC0
				(VCHIQ_MSG_CLOSE,
				service->localport,
				FUNC1(service->remoteport)),
				NULL, 0, 0, QMFLAGS_NO_MUTEX_UNLOCK);

		if (status == VCHIQ_SUCCESS) {
			if (!close_recvd) {
				/* Change the state while the mutex is
				   still held */
				FUNC12(service,
							VCHIQ_SRVSTATE_CLOSESENT);
				FUNC5(&state->slot_mutex);
				if (service->sync)
					FUNC5(&state->sync_mutex);
				break;
			}
		} else if (service->srvstate == VCHIQ_SRVSTATE_OPENSYNC) {
			FUNC5(&state->sync_mutex);
			break;
		} else
			break;

		/* Change the state while the mutex is still held */
		FUNC12(service, VCHIQ_SRVSTATE_CLOSERECVD);
		FUNC5(&state->slot_mutex);
		if (service->sync)
			FUNC5(&state->sync_mutex);

		status = FUNC2(service,
				VCHIQ_SRVSTATE_CLOSERECVD);
		break;

	case VCHIQ_SRVSTATE_CLOSESENT:
		if (!close_recvd)
			/* This happens when a process is killed mid-close */
			break;

		if (!state->is_master) {
			if (!FUNC3(service)) {
				status = VCHIQ_RETRY;
				break;
			}
		}

		if (status == VCHIQ_SUCCESS)
			status = FUNC2(service,
				VCHIQ_SRVSTATE_CLOSERECVD);
		break;

	case VCHIQ_SRVSTATE_CLOSERECVD:
		if (!close_recvd && is_server)
			/* Force into LISTENING mode */
			FUNC12(service,
				VCHIQ_SRVSTATE_LISTENING);
		status = FUNC2(service,
			VCHIQ_SRVSTATE_CLOSERECVD);
		break;

	default:
		FUNC10(vchiq_core_log_level,
			"vchiq_close_service_internal(%d) called in state %s",
			close_recvd, srvstate_names[service->srvstate]);
		break;
	}

	return status;
}