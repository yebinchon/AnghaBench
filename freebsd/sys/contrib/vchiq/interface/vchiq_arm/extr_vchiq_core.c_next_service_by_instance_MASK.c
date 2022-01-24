#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int unused_service; TYPE_2__** services; } ;
typedef  TYPE_1__ VCHIQ_STATE_T ;
struct TYPE_6__ {scalar_t__ srvstate; scalar_t__ instance; scalar_t__ ref_count; } ;
typedef  TYPE_2__ VCHIQ_SERVICE_T ;
typedef  scalar_t__ VCHIQ_INSTANCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VCHIQ_SRVSTATE_FREE ; 
 int /*<<< orphan*/  service_spinlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

VCHIQ_SERVICE_T *
FUNC3(VCHIQ_STATE_T *state, VCHIQ_INSTANCE_T instance,
	int *pidx)
{
	VCHIQ_SERVICE_T *service = NULL;
	int idx = *pidx;

	FUNC1(&service_spinlock);
	while (idx < state->unused_service) {
		VCHIQ_SERVICE_T *srv = state->services[idx++];
		if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
			(srv->instance == instance)) {
			service = srv;
			FUNC0(service->ref_count == 0);
			service->ref_count++;
			break;
		}
	}
	FUNC2(&service_spinlock);

	*pidx = idx;

	return service;
}