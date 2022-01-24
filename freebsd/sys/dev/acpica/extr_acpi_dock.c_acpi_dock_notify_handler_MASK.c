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
typedef  scalar_t__ device_t ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
#define  ACPI_NOTIFY_BUS_CHECK 130 
#define  ACPI_NOTIFY_DEVICE_CHECK 129 
#define  ACPI_NOTIFY_EJECT_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dock ; 

__attribute__((used)) static void
FUNC7(ACPI_HANDLE h, UINT32 notify, void *context)
{
	device_t	dev;

	dev = (device_t) context;
	FUNC2(dev, FUNC3(dev),
		    "got notification %#x\n", notify);

	FUNC0(dock);
	switch (notify) {
	case ACPI_NOTIFY_BUS_CHECK:
	case ACPI_NOTIFY_DEVICE_CHECK:
		FUNC4(dev);
		break;
	case ACPI_NOTIFY_EJECT_REQUEST:
		FUNC5(dev);
		break;
	default:
		FUNC6(dev, "unknown notify %#x\n", notify);
		break;
	}
	FUNC1(dock);
}