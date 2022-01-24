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
typedef  scalar_t__ uint32_t ;
typedef  int int32_t ;
typedef  scalar_t__ VCHI_SERVICE_HANDLE_T ;
typedef  scalar_t__ VCHI_FLAGS_T ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ VCHIQ_HEADER_T ;
struct TYPE_6__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ SHIM_SERVICE_T ;

/* Variables and functions */
 scalar_t__ VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE ; 
 scalar_t__ VCHI_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

int32_t FUNC5(VCHI_SERVICE_HANDLE_T handle,
	void *data,
	uint32_t max_data_size_to_read,
	uint32_t *actual_msg_size,
	VCHI_FLAGS_T flags)
{
	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
	VCHIQ_HEADER_T *header;

	FUNC0((flags != VCHI_FLAGS_NONE) &&
		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));

	if (flags == VCHI_FLAGS_NONE)
		if (FUNC3(&service->queue))
			return -1;

	header = FUNC4(&service->queue);

	FUNC1(data, header->data, header->size < max_data_size_to_read ?
		header->size : max_data_size_to_read);

	*actual_msg_size = header->size;

	FUNC2(service->handle, header);

	return 0;
}