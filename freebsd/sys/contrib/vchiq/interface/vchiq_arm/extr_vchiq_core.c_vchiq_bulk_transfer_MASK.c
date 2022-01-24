#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct bulk_waiter {scalar_t__ actual; int /*<<< orphan*/  event; TYPE_4__* bulk; } ;
typedef  int /*<<< orphan*/  payload ;
typedef  int /*<<< orphan*/  VCHI_MEM_HANDLE_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_18__ {int /*<<< orphan*/  slot_mutex; int /*<<< orphan*/  id; scalar_t__ is_master; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_22__ {scalar_t__ local_insert; scalar_t__ remove; int /*<<< orphan*/  process; int /*<<< orphan*/  remote_insert; TYPE_4__* bulks; } ;
struct TYPE_19__ {scalar_t__ srvstate; int /*<<< orphan*/  bulk_mutex; int /*<<< orphan*/  localport; int /*<<< orphan*/  remoteport; int /*<<< orphan*/  bulk_remove_event; TYPE_5__ bulk_rx; TYPE_5__ bulk_tx; TYPE_1__* state; } ;
typedef  TYPE_2__ VCHIQ_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_20__ {int* member_0; int member_1; } ;
typedef  TYPE_3__ VCHIQ_ELEMENT_T ;
struct TYPE_21__ {int mode; int size; scalar_t__ data; scalar_t__ actual; void* userdata; int /*<<< orphan*/  dir; } ;
typedef  TYPE_4__ VCHIQ_BULK_T ;
typedef  TYPE_5__ VCHIQ_BULK_QUEUE_T ;
typedef  int VCHIQ_BULK_MODE_T ;
typedef  int /*<<< orphan*/  VCHIQ_BULK_DIR_T ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int QMFLAGS_IS_BLOCKING ; 
 int QMFLAGS_NO_MUTEX_LOCK ; 
 int QMFLAGS_NO_MUTEX_UNLOCK ; 
 scalar_t__ VCHIQ_BULK_ACTUAL_ABORTED ; 
#define  VCHIQ_BULK_MODE_BLOCKING 131 
#define  VCHIQ_BULK_MODE_CALLBACK 130 
#define  VCHIQ_BULK_MODE_NOCALLBACK 129 
#define  VCHIQ_BULK_MODE_WAITING 128 
 int /*<<< orphan*/  VCHIQ_BULK_TRANSMIT ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VCHIQ_MSG_BULK_RX ; 
 int VCHIQ_MSG_BULK_TX ; 
 scalar_t__ VCHIQ_NUM_SERVICE_BULKS ; 
 int /*<<< orphan*/  VCHIQ_POLL_RXNOTIFY ; 
 int /*<<< orphan*/  VCHIQ_POLL_TXNOTIFY ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_SRVSTATE_OPEN ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  VCHI_MEM_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bulk_stalls ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

VCHIQ_STATUS_T
FUNC18(VCHIQ_SERVICE_HANDLE_T handle,
	VCHI_MEM_HANDLE_T memhandle, void *offset, int size, void *userdata,
	VCHIQ_BULK_MODE_T mode, VCHIQ_BULK_DIR_T dir)
{
	VCHIQ_SERVICE_T *service = FUNC5(handle);
	VCHIQ_BULK_QUEUE_T *queue;
	VCHIQ_BULK_T *bulk;
	VCHIQ_STATE_T *state;
	struct bulk_waiter *bulk_waiter = NULL;
	const char dir_char = (dir == VCHIQ_BULK_TRANSMIT) ? 't' : 'r';
	const int dir_msgtype = (dir == VCHIQ_BULK_TRANSMIT) ?
		VCHIQ_MSG_BULK_TX : VCHIQ_MSG_BULK_RX;
	VCHIQ_STATUS_T status = VCHIQ_ERROR;

	if (!service ||
		 (service->srvstate != VCHIQ_SRVSTATE_OPEN) ||
		 ((memhandle == VCHI_MEM_HANDLE_INVALID) && (offset == NULL)) ||
		 (FUNC12(service) != VCHIQ_SUCCESS))
		goto error_exit;

	switch (mode) {
	case VCHIQ_BULK_MODE_NOCALLBACK:
	case VCHIQ_BULK_MODE_CALLBACK:
		break;
	case VCHIQ_BULK_MODE_BLOCKING:
		bulk_waiter = (struct bulk_waiter *)userdata;
		FUNC3(&bulk_waiter->event, 0);
		bulk_waiter->actual = 0;
		bulk_waiter->bulk = NULL;
		break;
	case VCHIQ_BULK_MODE_WAITING:
		bulk_waiter = (struct bulk_waiter *)userdata;
		bulk = bulk_waiter->bulk;
		goto waiting;
	default:
		goto error_exit;
	}

	state = service->state;

	queue = (dir == VCHIQ_BULK_TRANSMIT) ?
		&service->bulk_tx : &service->bulk_rx;

	if (FUNC6(&service->bulk_mutex) != 0) {
		status = VCHIQ_RETRY;
		goto error_exit;
	}

	if (queue->local_insert == queue->remove + VCHIQ_NUM_SERVICE_BULKS) {
		FUNC2(service, bulk_stalls);
		do {
			FUNC7(&service->bulk_mutex);
			if (FUNC4(&service->bulk_remove_event)
				!= 0) {
				status = VCHIQ_RETRY;
				goto error_exit;
			}
			if (FUNC6(&service->bulk_mutex)
				!= 0) {
				status = VCHIQ_RETRY;
				goto error_exit;
			}
		} while (queue->local_insert == queue->remove +
				VCHIQ_NUM_SERVICE_BULKS);
	}

	bulk = &queue->bulks[FUNC0(queue->local_insert)];

	bulk->mode = mode;
	bulk->dir = dir;
	bulk->userdata = userdata;
	bulk->size = size;
	bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;

	if (FUNC16(bulk, memhandle, offset, size, dir) !=
		VCHIQ_SUCCESS)
		goto unlock_error_exit;

	FUNC17();

	FUNC14(vchiq_core_log_level,
		"%d: bt (%d->%d) %cx %x@%x %x",
		state->id,
		service->localport, service->remoteport, dir_char,
		size, (unsigned int)bulk->data, (unsigned int)userdata);

	/* The slot mutex must be held when the service is being closed, so
	   claim it here to ensure that isn't happening */
	if (FUNC6(&state->slot_mutex) != 0) {
		status = VCHIQ_RETRY;
		goto cancel_bulk_error_exit;
	}

	if (service->srvstate != VCHIQ_SRVSTATE_OPEN)
		goto unlock_both_error_exit;

	if (state->is_master) {
		queue->local_insert++;
		if (FUNC10(service, queue))
			FUNC9(state, service,
				(dir == VCHIQ_BULK_TRANSMIT) ?
				VCHIQ_POLL_TXNOTIFY : VCHIQ_POLL_RXNOTIFY);
	} else {
		int payload[2] = { (int)bulk->data, bulk->size };
		VCHIQ_ELEMENT_T element = { payload, sizeof(payload) };

		status = FUNC8(state, NULL,
			FUNC1(dir_msgtype,
				service->localport, service->remoteport),
			&element, 1, sizeof(payload),
			QMFLAGS_IS_BLOCKING |
			QMFLAGS_NO_MUTEX_LOCK |
			QMFLAGS_NO_MUTEX_UNLOCK);
		if (status != VCHIQ_SUCCESS) {
			goto unlock_both_error_exit;
		}
		queue->local_insert++;
	}

	FUNC7(&state->slot_mutex);
	FUNC7(&service->bulk_mutex);

	FUNC15(vchiq_core_log_level,
		"%d: bt:%d %cx li=%x ri=%x p=%x",
		state->id,
		service->localport, dir_char,
		queue->local_insert, queue->remote_insert, queue->process);

waiting:
	FUNC11(service);

	status = VCHIQ_SUCCESS;

	if (bulk_waiter) {
		bulk_waiter->bulk = bulk;
		if (FUNC4(&bulk_waiter->event) != 0)
			status = VCHIQ_RETRY;
		else if (bulk_waiter->actual == VCHIQ_BULK_ACTUAL_ABORTED)
			status = VCHIQ_ERROR;
	}

	return status;

unlock_both_error_exit:
	FUNC7(&state->slot_mutex);
cancel_bulk_error_exit:
	FUNC13(bulk);
unlock_error_exit:
	FUNC7(&service->bulk_mutex);

error_exit:
	if (service)
		FUNC11(service);
	return status;
}