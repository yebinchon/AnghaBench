#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int poll_needed; TYPE_1__* local; int /*<<< orphan*/ * poll_services; } ;
typedef  TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_8__ {int localport; int /*<<< orphan*/  poll_flags; } ;
typedef  TYPE_3__ VCHIQ_SERVICE_T ;
struct TYPE_6__ {int /*<<< orphan*/  trigger; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

inline void
FUNC4(VCHIQ_STATE_T *state, VCHIQ_SERVICE_T *service, int poll_type)
{
	uint32_t value;

	if (service) {
		do {
			value = FUNC1(&service->poll_flags);
		} while (FUNC0(&service->poll_flags, value,
			value | (1 << poll_type)) != value);

		do {
			value = FUNC1(&state->poll_services[
				service->localport>>5]);
		} while (FUNC0(
			&state->poll_services[service->localport>>5],
			value, value | (1 << (service->localport & 0x1f)))
			!= value);
	}

	state->poll_needed = 1;
	FUNC3();

	/* ... and ensure the slot handler runs. */
	FUNC2(&state->local->trigger);
}