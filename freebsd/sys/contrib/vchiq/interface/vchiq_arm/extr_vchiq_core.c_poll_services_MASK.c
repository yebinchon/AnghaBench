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
typedef  int uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  id; int /*<<< orphan*/ * poll_services; int /*<<< orphan*/  unused_service; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_12__ {int /*<<< orphan*/  bulk_rx; int /*<<< orphan*/  bulk_tx; int /*<<< orphan*/  remoteport; int /*<<< orphan*/  localport; int /*<<< orphan*/  public_fourcc; int /*<<< orphan*/  poll_flags; } ;
typedef  TYPE_2__ VCHIQ_SERVICE_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCHIQ_FOURCC_INVALID ; 
 int VCHIQ_POLL_REMOVE ; 
 int VCHIQ_POLL_RXNOTIFY ; 
 int VCHIQ_POLL_TERMINATE ; 
 int VCHIQ_POLL_TXNOTIFY ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vchiq_core_log_level ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(VCHIQ_STATE_T *state)
{
	int group, i;

	for (group = 0; group < FUNC0(state->unused_service); group++) {
		uint32_t flags;
		flags = FUNC1(&state->poll_services[group], 0);
		for (i = 0; flags; i++) {
			if (flags & (1 << i)) {
				VCHIQ_SERVICE_T *service =
					FUNC2(state,
						(group<<5) + i);
				uint32_t service_flags;
				flags &= ~(1 << i);
				if (!service)
					continue;
				service_flags =
					FUNC1(&service->poll_flags, 0);
				if (service_flags &
					(1 << VCHIQ_POLL_REMOVE)) {
					FUNC7(vchiq_core_log_level,
						"%d: ps - remove %d<->%d",
						state->id, service->localport,
						service->remoteport);

					/* Make it look like a client, because
					   it must be removed and not left in
					   the LISTENING state. */
					service->public_fourcc =
						VCHIQ_FOURCC_INVALID;

					if (FUNC6(
						service, 0/*!close_recvd*/) !=
						VCHIQ_SUCCESS)
						FUNC4(state, service,
							VCHIQ_POLL_REMOVE);
				} else if (service_flags &
					(1 << VCHIQ_POLL_TERMINATE)) {
					FUNC7(vchiq_core_log_level,
						"%d: ps - terminate %d<->%d",
						state->id, service->localport,
						service->remoteport);
					if (FUNC6(
						service, 0/*!close_recvd*/) !=
						VCHIQ_SUCCESS)
						FUNC4(state, service,
							VCHIQ_POLL_TERMINATE);
				}
				if (service_flags & (1 << VCHIQ_POLL_TXNOTIFY))
					FUNC3(service,
						&service->bulk_tx,
						1/*retry_poll*/);
				if (service_flags & (1 << VCHIQ_POLL_RXNOTIFY))
					FUNC3(service,
						&service->bulk_rx,
						1/*retry_poll*/);
				FUNC5(service);
			}
		}
	}
}