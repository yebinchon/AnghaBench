#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
typedef  scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_3__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ SHIM_SERVICE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 

int32_t FUNC3(const VCHI_SERVICE_HANDLE_T handle)
{
	int32_t ret = -1;
	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
	if (service) {
		VCHIQ_STATUS_T status = FUNC1(service->handle);
		if (status == VCHIQ_SUCCESS) {
			FUNC0(service);
			service = NULL;
		}

		ret = FUNC2(status);
	}
	return ret;
}