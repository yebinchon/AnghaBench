#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHI_FLAGS_T ;
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_4__ {void const* member_0; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ VCHIQ_ELEMENT_T ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_2__ SHIM_SERVICE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_RETRY ; 
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

int32_t FUNC4(VCHI_SERVICE_HANDLE_T handle,
	const void *data,
	uint32_t data_size,
	VCHI_FLAGS_T flags,
	void *msg_handle)
{
	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
	VCHIQ_ELEMENT_T element = {data, data_size};
	VCHIQ_STATUS_T status;

	(void)msg_handle;

	FUNC0(flags != VCHI_FLAGS_BLOCK_UNTIL_QUEUED);

	status = FUNC2(service->handle, &element, 1);

	/* vchiq_queue_message() may return VCHIQ_RETRY, so we need to
	** implement a retry mechanism since this function is supposed
	** to block until queued
	*/
	while (status == VCHIQ_RETRY) {
		FUNC1(1);
		status = FUNC2(service->handle, &element, 1);
	}

	return FUNC3(status);
}