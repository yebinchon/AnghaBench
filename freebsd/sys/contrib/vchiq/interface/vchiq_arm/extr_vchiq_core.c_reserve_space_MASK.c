#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int local_tx_pos; char* tx_data; int slot_queue_available; int /*<<< orphan*/  slot_available_event; TYPE_1__* remote; TYPE_3__* local; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_11__ {int tx_pos; int* slot_queue; } ;
typedef  TYPE_3__ VCHIQ_SHARED_STATE_T ;
struct TYPE_12__ {int size; int /*<<< orphan*/  msgid; } ;
typedef  TYPE_4__ VCHIQ_HEADER_T ;
struct TYPE_9__ {int /*<<< orphan*/  trigger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  VCHIQ_MSGID_PADDING ; 
 int VCHIQ_SLOT_MASK ; 
 size_t VCHIQ_SLOT_QUEUE_MASK ; 
 int VCHIQ_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slot_stalls ; 

__attribute__((used)) static VCHIQ_HEADER_T *
FUNC8(VCHIQ_STATE_T *state, int space, int is_blocking)
{
	VCHIQ_SHARED_STATE_T *local = state->local;
	int tx_pos = state->local_tx_pos;
	int slot_space = VCHIQ_SLOT_SIZE - (tx_pos & VCHIQ_SLOT_MASK);

	if (space > slot_space) {
		VCHIQ_HEADER_T *header;
		/* Fill the remaining space with padding */
		FUNC4(state->tx_data == NULL);
		header = (VCHIQ_HEADER_T *)
			(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
		header->msgid = VCHIQ_MSGID_PADDING;
		header->size = slot_space - sizeof(VCHIQ_HEADER_T);

		tx_pos += slot_space;
	}

	/* If necessary, get the next slot. */
	if ((tx_pos & VCHIQ_SLOT_MASK) == 0) {
		int slot_index;

		/* If there is no free slot... */

		if (FUNC6(&state->slot_available_event) != 0) {
			/* ...wait for one. */

			FUNC3(state, slot_stalls);

			/* But first, flush through the last slot. */
			state->local_tx_pos = tx_pos;
			local->tx_pos = tx_pos;
			FUNC7(&state->remote->trigger);

			if (!is_blocking ||
				(FUNC5(
				&state->slot_available_event) != 0))
				return NULL; /* No space available */
		}

		FUNC0(tx_pos ==
			(state->slot_queue_available * VCHIQ_SLOT_SIZE));

		slot_index = local->slot_queue[
			FUNC2(tx_pos) &
			VCHIQ_SLOT_QUEUE_MASK];
		state->tx_data =
			(char *)FUNC1(state, slot_index);
	}

	state->local_tx_pos = tx_pos + space;

	return (VCHIQ_HEADER_T *)(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
}