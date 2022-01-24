#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* remote; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
typedef  int /*<<< orphan*/  VCHIQ_SLOT_INFO_T ;
struct TYPE_16__ {int slot_first; int slot_last; int slot_sync; } ;
typedef  TYPE_2__ VCHIQ_SHARED_STATE_T ;
struct TYPE_17__ {TYPE_1__* state; } ;
typedef  TYPE_3__ VCHIQ_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
struct TYPE_18__ {int msgid; } ;
typedef  TYPE_4__ VCHIQ_HEADER_T ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int) ; 
 int VCHIQ_MSGID_CLAIMED ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void
FUNC6(VCHIQ_SERVICE_HANDLE_T handle, VCHIQ_HEADER_T *header)
{
	VCHIQ_SERVICE_T *service = FUNC2(handle);
	VCHIQ_SHARED_STATE_T *remote;
	VCHIQ_STATE_T *state;
	int slot_index;

	if (!service)
		return;

	state = service->state;
	remote = state->remote;

	slot_index = FUNC0(state, (void *)header);

	if ((slot_index >= remote->slot_first) &&
		(slot_index <= remote->slot_last)) {
		int msgid = header->msgid;
		if (msgid & VCHIQ_MSGID_CLAIMED) {
			VCHIQ_SLOT_INFO_T *slot_info =
				FUNC1(state, slot_index);

			FUNC4(state, slot_info, header, service);
		}
	} else if (slot_index == remote->slot_sync)
		FUNC3(state, header);

	FUNC5(service);
}