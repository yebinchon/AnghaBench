#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_17__ {int /*<<< orphan*/  sync_mutex; TYPE_2__* remote; int /*<<< orphan*/  id; TYPE_4__* local; } ;
typedef  TYPE_3__ VCHIQ_STATE_T ;
struct TYPE_18__ {int /*<<< orphan*/  slot_sync; int /*<<< orphan*/  sync_release; } ;
typedef  TYPE_4__ VCHIQ_SHARED_STATE_T ;
struct TYPE_15__ {int fourcc; } ;
struct TYPE_19__ {TYPE_1__ base; } ;
typedef  TYPE_5__ VCHIQ_SERVICE_T ;
struct TYPE_20__ {int msgid; int size; scalar_t__ data; } ;
typedef  TYPE_6__ VCHIQ_HEADER_T ;
struct TYPE_21__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_7__ VCHIQ_ELEMENT_T ;
struct TYPE_16__ {int /*<<< orphan*/  sync_trigger; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ VCHIQ_LOG_TRACE ; 
 int FUNC2 (char,char,char,char) ; 
 int VCHIQ_MSGID_PADDING ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ VCHIQ_MSG_PAUSE ; 
 scalar_t__ VCHIQ_MSG_RESUME ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ VCHIQ_RETRY ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  ctrl_tx_bytes ; 
 int /*<<< orphan*/  ctrl_tx_count ; 
 int /*<<< orphan*/  error_count ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 scalar_t__ FUNC18 (scalar_t__,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ vchiq_sync_log_level ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC24(VCHIQ_STATE_T *state, VCHIQ_SERVICE_T *service,
	int msgid, const VCHIQ_ELEMENT_T *elements,
	int count, int size, int is_blocking)
{
	VCHIQ_SHARED_STATE_T *local;
	VCHIQ_HEADER_T *header;

	local = state->local;

	if ((FUNC5(msgid) != VCHIQ_MSG_RESUME) &&
		(FUNC10(&state->sync_mutex) != 0))
		return VCHIQ_RETRY;

	FUNC16(&local->sync_release);

	FUNC17();

	header = (VCHIQ_HEADER_T *)FUNC0(state,
		local->slot_sync);

	{
		int oldmsgid = header->msgid;
		if (oldmsgid != VCHIQ_MSGID_PADDING)
			FUNC20(vchiq_core_log_level,
				"%d: qms - msgid %x, not PADDING",
				state->id, oldmsgid);
	}

	if (service) {
		int i, pos;

		FUNC21(vchiq_sync_log_level,
			"%d: qms %s@%x,%x (%d->%d)", state->id,
			FUNC14(FUNC5(msgid)),
			(unsigned int)header, size,
			FUNC4(msgid),
			FUNC3(msgid));

		for (i = 0, pos = 0; i < (unsigned int)count;
			pos += elements[i++].size)
			if (elements[i].size) {
				if (FUNC18
					(header->data + pos, elements[i].data,
					(size_t) elements[i].size) !=
					VCHIQ_SUCCESS) {
					FUNC11(&state->sync_mutex);
					FUNC7(service,
						error_count);
					return VCHIQ_ERROR;
				}
			}

		if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE)
			FUNC19("Sent Sync",
				0, header->data,
				FUNC13(16, pos));

		FUNC7(service, ctrl_tx_count);
		FUNC6(service, ctrl_tx_bytes, size);
	} else {
		FUNC21(vchiq_sync_log_level,
			"%d: qms %s@%x,%x (%d->%d)", state->id,
			FUNC14(FUNC5(msgid)),
			(unsigned int)header, size,
			FUNC4(msgid),
			FUNC3(msgid));
		if (size != 0) {
			FUNC9(!((count == 1) && (size == elements[0].size)));
			FUNC12(header->data, elements[0].data,
				elements[0].size);
		}
		FUNC8(state, ctrl_tx_count);
	}

	header->size = size;
	header->msgid = msgid;

	if (vchiq_sync_log_level >= VCHIQ_LOG_TRACE) {
		int svc_fourcc;

		svc_fourcc = service
			? service->base.fourcc
			: FUNC2('?', '?', '?', '?');

		FUNC22(vchiq_sync_log_level,
			"Sent Sync Msg %s(%u) to %c%c%c%c s:%u d:%d len:%d",
			FUNC14(FUNC5(msgid)),
			FUNC5(msgid),
			FUNC1(svc_fourcc),
			FUNC4(msgid),
			FUNC3(msgid),
			size);
	}

	/* Make sure the new header is visible to the peer. */
	FUNC23();

	FUNC15(&state->remote->sync_trigger);

	if (FUNC5(msgid) != VCHIQ_MSG_PAUSE)
		FUNC11(&state->sync_mutex);

	return VCHIQ_SUCCESS;
}