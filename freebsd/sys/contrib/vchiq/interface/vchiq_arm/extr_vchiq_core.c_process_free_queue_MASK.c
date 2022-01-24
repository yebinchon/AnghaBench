#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int slot_queue_available; int data_use_count; int data_quota; int /*<<< orphan*/  slot_available_event; int /*<<< orphan*/  data_quota_event; int /*<<< orphan*/  id; TYPE_3__* service_quotas; TYPE_2__* local; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_8__ {int slot_queue_recycle; int* slot_queue; } ;
typedef  TYPE_2__ VCHIQ_SHARED_STATE_T ;
struct TYPE_9__ {int message_use_count; int message_quota; int slot_use_count; int /*<<< orphan*/  quota_event; } ;
typedef  TYPE_3__ VCHIQ_SERVICE_QUOTA_T ;
struct TYPE_10__ {int msgid; unsigned int size; } ;
typedef  TYPE_4__ VCHIQ_HEADER_T ;
typedef  int /*<<< orphan*/  BITSET_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  VCHIQ_MAX_SERVICES ; 
 scalar_t__ VCHIQ_MSG_DATA ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t VCHIQ_SLOT_QUEUE_MASK ; 
 unsigned int VCHIQ_SLOT_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  quota_spinlock ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int,int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,unsigned int,unsigned int,int) ; 

__attribute__((used)) static void
FUNC16(VCHIQ_STATE_T *state)
{
	VCHIQ_SHARED_STATE_T *local = state->local;
	BITSET_T service_found[FUNC2(VCHIQ_MAX_SERVICES)];
	int slot_queue_available;

	/* Find slots which have been freed by the other side, and return them
	** to the available queue. */
	slot_queue_available = state->slot_queue_available;

	/* Use a memory barrier to ensure that any state that may have been
	** modified by another thread is not masked by stale prefetched
	** values. */
	FUNC9();

	while (slot_queue_available != local->slot_queue_recycle) {
		unsigned int pos;
		int slot_index = local->slot_queue[slot_queue_available++ &
			VCHIQ_SLOT_QUEUE_MASK];
		char *data = (char *)FUNC4(state, slot_index);
		int data_found = 0;

		FUNC10();

		FUNC15(vchiq_core_log_level, "%d: pfq %d=%x %x %x",
			state->id, slot_index, (unsigned int)data,
			local->slot_queue_recycle, slot_queue_available);

		/* Initialise the bitmask for services which have used this
		** slot */
		FUNC3(service_found);

		pos = 0;

		while (pos < VCHIQ_SLOT_SIZE) {
			VCHIQ_HEADER_T *header =
				(VCHIQ_HEADER_T *)(data + pos);
			int msgid = header->msgid;
			if (FUNC6(msgid) == VCHIQ_MSG_DATA) {
				int port = FUNC5(msgid);
				VCHIQ_SERVICE_QUOTA_T *service_quota =
					&state->service_quotas[port];
				int count;
				FUNC11(&quota_spinlock);
				count = service_quota->message_use_count;
				if (count > 0)
					service_quota->message_use_count =
						count - 1;
				FUNC12(&quota_spinlock);

				if (count == service_quota->message_quota)
					/* Signal the service that it
					** has dropped below its quota
					*/
					FUNC13(&service_quota->quota_event);
				else if (count == 0) {
					FUNC14(vchiq_core_log_level,
						"service %d "
						"message_use_count=%d "
						"(header %x, msgid %x, "
						"header->msgid %x, "
						"header->size %x)",
						port,
						service_quota->
							message_use_count,
						(unsigned int)header, msgid,
						header->msgid,
						header->size);
					FUNC7(1, "invalid message use count\n");
				}
				if (!FUNC0(service_found, port)) {
					/* Set the found bit for this service */
					FUNC1(service_found, port);

					FUNC11(&quota_spinlock);
					count = service_quota->slot_use_count;
					if (count > 0)
						service_quota->slot_use_count =
							count - 1;
					FUNC12(&quota_spinlock);

					if (count > 0) {
						/* Signal the service in case
						** it has dropped below its
						** quota */
						FUNC13(&service_quota->quota_event);
						FUNC15(
							vchiq_core_log_level,
							"%d: pfq:%d %x@%x - "
							"slot_use->%d",
							state->id, port,
							header->size,
							(unsigned int)header,
							count - 1);
					} else {
						FUNC14(
							vchiq_core_log_level,
								"service %d "
								"slot_use_count"
								"=%d (header %x"
								", msgid %x, "
								"header->msgid"
								" %x, header->"
								"size %x)",
							port, count,
							(unsigned int)header,
							msgid,
							header->msgid,
							header->size);
						FUNC7(1, "bad slot use count\n");
					}
				}

				data_found = 1;
			}

			pos += FUNC8(header->size);
			if (pos > VCHIQ_SLOT_SIZE) {
				FUNC14(vchiq_core_log_level,
					"pfq - pos %x: header %x, msgid %x, "
					"header->msgid %x, header->size %x",
					pos, (unsigned int)header, msgid,
					header->msgid, header->size);
				FUNC7(1, "invalid slot position\n");
			}
		}

		if (data_found) {
			int count;
			FUNC11(&quota_spinlock);
			count = state->data_use_count;
			if (count > 0)
				state->data_use_count =
					count - 1;
			FUNC12(&quota_spinlock);
			if (count == state->data_quota)
				FUNC13(&state->data_quota_event);
		}

		FUNC9();

		state->slot_queue_available = slot_queue_available;
		FUNC13(&state->slot_available_event);
	}
}