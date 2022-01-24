#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int ctrl_tx_count; int ctrl_rx_count; int error_count; int slot_stalls; int data_stalls; } ;
struct TYPE_8__ {int id; size_t conn_state; int local_tx_pos; int rx_pos; int slot_queue_available; int data_quota; int data_use_count; int unused_service; TYPE_5__* remote; TYPE_5__* local; TYPE_1__ stats; scalar_t__ rx_data; scalar_t__ tx_data; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_T ;
struct TYPE_9__ {int tx_pos; int slot_queue_recycle; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_ENABLE_STATS ; 
 int VCHIQ_SLOT_MASK ; 
 int VCHIQ_SLOT_SIZE ; 
 int VCHIQ_VERSION ; 
 int VCHIQ_VERSION_MIN ; 
 char** conn_state_names ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (void*,TYPE_2__*,TYPE_5__*,char*) ; 

void
FUNC8(void *dump_context, VCHIQ_STATE_T *state)
{
	char buf[80];
	int len;
	int i;

	len = FUNC1(buf, sizeof(buf), "State %d: %s", state->id,
		conn_state_names[state->conn_state]);
	FUNC3(dump_context, buf, len + 1);

	len = FUNC1(buf, sizeof(buf),
		"  tx_pos=%x(@%x), rx_pos=%x(@%x)",
		state->local->tx_pos,
		(uint32_t)state->tx_data +
			(state->local_tx_pos & VCHIQ_SLOT_MASK),
		state->rx_pos,
		(uint32_t)state->rx_data +
			(state->rx_pos & VCHIQ_SLOT_MASK));
	FUNC3(dump_context, buf, len + 1);

	len = FUNC1(buf, sizeof(buf),
		"  Version: %d (min %d)",
		VCHIQ_VERSION, VCHIQ_VERSION_MIN);
	FUNC3(dump_context, buf, len + 1);

	if (VCHIQ_ENABLE_STATS) {
		len = FUNC1(buf, sizeof(buf),
			"  Stats: ctrl_tx_count=%d, ctrl_rx_count=%d, "
			"error_count=%d",
			state->stats.ctrl_tx_count, state->stats.ctrl_rx_count,
			state->stats.error_count);
		FUNC3(dump_context, buf, len + 1);
	}

	len = FUNC1(buf, sizeof(buf),
		"  Slots: %d available (%d data), %d recyclable, %d stalls "
		"(%d data)",
		((state->slot_queue_available * VCHIQ_SLOT_SIZE) -
			state->local_tx_pos) / VCHIQ_SLOT_SIZE,
		state->data_quota - state->data_use_count,
		state->local->slot_queue_recycle - state->slot_queue_available,
		state->stats.slot_stalls, state->stats.data_stalls);
	FUNC3(dump_context, buf, len + 1);

	FUNC5(dump_context);

	FUNC7(dump_context, state, state->local, "Local");
	FUNC7(dump_context, state, state->remote, "Remote");

	FUNC4(dump_context);

	for (i = 0; i < state->unused_service; i++) {
		VCHIQ_SERVICE_T *service = FUNC0(state, i);

		if (service) {
			FUNC6(dump_context, service);
			FUNC2(service);
		}
	}
}