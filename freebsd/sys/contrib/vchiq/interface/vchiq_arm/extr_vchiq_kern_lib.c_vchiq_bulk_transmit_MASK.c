#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VCHIQ_STATUS_T ;
typedef  int /*<<< orphan*/  VCHIQ_SERVICE_HANDLE_T ;
typedef  int VCHIQ_BULK_MODE_T ;

/* Variables and functions */
#define  VCHIQ_BULK_MODE_BLOCKING 130 
#define  VCHIQ_BULK_MODE_CALLBACK 129 
#define  VCHIQ_BULK_MODE_NOCALLBACK 128 
 int /*<<< orphan*/  VCHIQ_BULK_TRANSMIT ; 
 int /*<<< orphan*/  VCHIQ_ERROR ; 
 int /*<<< orphan*/  VCHI_MEM_HANDLE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int,void*,int,int /*<<< orphan*/ ) ; 

VCHIQ_STATUS_T
FUNC2(VCHIQ_SERVICE_HANDLE_T handle, void *data,
	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
{
	VCHIQ_STATUS_T status;

	switch (mode) {
	case VCHIQ_BULK_MODE_NOCALLBACK:
	case VCHIQ_BULK_MODE_CALLBACK:
		status = FUNC1(handle,
			VCHI_MEM_HANDLE_INVALID, data, size, userdata,
			mode, VCHIQ_BULK_TRANSMIT);
		break;
	case VCHIQ_BULK_MODE_BLOCKING:
		status = FUNC0(handle,
			data, size, VCHIQ_BULK_TRANSMIT);
		break;
	default:
		return VCHIQ_ERROR;
	}

	return status;
}