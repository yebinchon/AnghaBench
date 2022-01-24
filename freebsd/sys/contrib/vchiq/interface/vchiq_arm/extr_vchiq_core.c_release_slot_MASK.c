#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  recycle_mutex; TYPE_1__* remote; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_14__ {int release_count; int use_count; } ;
typedef  TYPE_3__ VCHIQ_SLOT_INFO_T ;
struct TYPE_15__ {scalar_t__ closing; } ;
typedef  TYPE_4__ VCHIQ_SERVICE_T ;
struct TYPE_16__ {int msgid; } ;
typedef  TYPE_5__ VCHIQ_HEADER_T ;
struct TYPE_12__ {int slot_queue_recycle; int /*<<< orphan*/  recycle; int /*<<< orphan*/ * slot_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int VCHIQ_MSGID_CLAIMED ; 
 int VCHIQ_SLOT_QUEUE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(VCHIQ_STATE_T *state, VCHIQ_SLOT_INFO_T *slot_info,
	VCHIQ_HEADER_T *header, VCHIQ_SERVICE_T *service)
{
	int release_count;

	FUNC1(&state->recycle_mutex);

	if (header) {
		int msgid = header->msgid;
		if (((msgid & VCHIQ_MSGID_CLAIMED) == 0) ||
			(service && service->closing)) {
			FUNC2(&state->recycle_mutex);
			return;
		}

		/* Rewrite the message header to prevent a double
		** release */
		header->msgid = msgid & ~VCHIQ_MSGID_CLAIMED;
	}

	release_count = slot_info->release_count;
	slot_info->release_count = ++release_count;

	if (release_count == slot_info->use_count) {
		int slot_queue_recycle;
		/* Add to the freed queue */

		/* A read barrier is necessary here to prevent speculative
		** fetches of remote->slot_queue_recycle from overtaking the
		** mutex. */
		FUNC4();

		slot_queue_recycle = state->remote->slot_queue_recycle;
		state->remote->slot_queue[slot_queue_recycle &
			VCHIQ_SLOT_QUEUE_MASK] =
			FUNC0(state, slot_info);
		state->remote->slot_queue_recycle = slot_queue_recycle + 1;
		FUNC5(vchiq_core_log_level,
			"%d: release_slot %d - recycle->%x",
			state->id, FUNC0(state, slot_info),
			state->remote->slot_queue_recycle);

		/* A write barrier is necessary, but remote_event_signal
		** contains one. */
		FUNC3(&state->remote->recycle);
	}

	FUNC2(&state->recycle_mutex);
}