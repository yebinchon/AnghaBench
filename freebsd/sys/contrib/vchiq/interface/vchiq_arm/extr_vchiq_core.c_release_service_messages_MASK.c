#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* rx_data; unsigned int rx_pos; TYPE_1__* remote; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_17__ {scalar_t__ release_count; scalar_t__ use_count; } ;
typedef  TYPE_3__ VCHIQ_SLOT_INFO_T ;
struct TYPE_18__ {scalar_t__ localport; scalar_t__ sync; TYPE_2__* state; } ;
typedef  TYPE_4__ VCHIQ_SERVICE_T ;
struct TYPE_19__ {int msgid; int /*<<< orphan*/  size; } ;
typedef  TYPE_5__ VCHIQ_HEADER_T ;
struct TYPE_15__ {int slot_last; int slot_sync; int slot_first; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int) ; 
 int VCHIQ_MSGID_CLAIMED ; 
 scalar_t__ FUNC2 (int) ; 
 unsigned int VCHIQ_SLOT_MASK ; 
 unsigned int VCHIQ_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC9(VCHIQ_SERVICE_T *service)
{
	VCHIQ_STATE_T *state = service->state;
	int slot_last = state->remote->slot_last;
	int i;

	/* Release any claimed messages aimed at this service */

	if (service->sync) {
		VCHIQ_HEADER_T *header =
			(VCHIQ_HEADER_T *)FUNC0(state,
						state->remote->slot_sync);
		if (FUNC2(header->msgid) == service->localport)
			FUNC5(state, header);

		return;
	}

	for (i = state->remote->slot_first; i <= slot_last; i++) {
		VCHIQ_SLOT_INFO_T *slot_info =
			FUNC1(state, i);
		if (slot_info->release_count != slot_info->use_count) {
			char *data =
				(char *)FUNC0(state, i);
			unsigned int pos, end;

			end = VCHIQ_SLOT_SIZE;
			if (data == state->rx_data)
				/* This buffer is still being read from - stop
				** at the current read position */
				end = state->rx_pos & VCHIQ_SLOT_MASK;

			pos = 0;

			while (pos < end) {
				VCHIQ_HEADER_T *header =
					(VCHIQ_HEADER_T *)(data + pos);
				int msgid = header->msgid;
				int port = FUNC2(msgid);
				if ((port == service->localport) &&
					(msgid & VCHIQ_MSGID_CLAIMED)) {
					FUNC8(vchiq_core_log_level,
						"  fsi - hdr %x",
						(unsigned int)header);
					FUNC6(state, slot_info, header,
						NULL);
				}
				pos += FUNC4(header->size);
				if (pos > VCHIQ_SLOT_SIZE) {
					FUNC7(vchiq_core_log_level,
						"fsi - pos %x: header %x, "
						"msgid %x, header->msgid %x, "
						"header->size %x",
						pos, (unsigned int)header,
						msgid, header->msgid,
						header->size);
					FUNC3(1, "invalid slot position\n");
				}
			}
		}
	}
}