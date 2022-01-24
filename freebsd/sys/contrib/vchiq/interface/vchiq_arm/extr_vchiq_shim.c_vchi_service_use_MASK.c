#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
typedef  scalar_t__ VCHI_SERVICE_HANDLE_T ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ SHIM_SERVICE_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int32_t FUNC2(const VCHI_SERVICE_HANDLE_T handle)
{
	int32_t ret = -1;
	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
	if (service)
		ret = FUNC0(FUNC1(service->handle));
	return ret;
}