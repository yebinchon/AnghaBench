#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
struct TYPE_5__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ VCHIQ_SERVICE_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

VCHIQ_STATUS_T
FUNC3(VCHIQ_SERVICE_HANDLE_T handle)
{
	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
	VCHIQ_SERVICE_T *service = FUNC0(handle);
	if (service) {
		ret = FUNC2(service->state, service);
		FUNC1(service);
	}
	return ret;
}