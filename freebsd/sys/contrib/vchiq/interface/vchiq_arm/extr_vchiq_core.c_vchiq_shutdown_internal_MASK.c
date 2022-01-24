#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_STATE_T ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHIQ_INSTANCE_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

VCHIQ_STATUS_T
FUNC3(VCHIQ_STATE_T *state, VCHIQ_INSTANCE_T instance)
{
	VCHIQ_SERVICE_T *service;
	int i;

	/* Find all services registered to this client and enable them. */
	i = 0;
	while ((service = FUNC0(state, instance,
		&i)) !=	NULL) {
		(void)FUNC2(service->handle);
		FUNC1(service);
	}

	return VCHIQ_SUCCESS;
}