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
typedef  int /*<<< orphan*/  EFI_STATUS ;
typedef  int /*<<< orphan*/  EFI_HANDLE ;
typedef  int /*<<< orphan*/  EFI_DEVICE_PATH ;

/* Variables and functions */
 int /*<<< orphan*/  DevicePathGUID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 

EFI_DEVICE_PATH *
FUNC2(EFI_HANDLE handle)
{
	EFI_DEVICE_PATH *devpath;
	EFI_STATUS status;

	status = FUNC1(handle, &DevicePathGUID,
	    (void **)&devpath);
	if (FUNC0(status))
		devpath = NULL;
	return (devpath);
}