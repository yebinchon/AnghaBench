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
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_NS_NO_UPSEARCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

char *
FUNC3 (
    char                    *DeviceName)
{
    ACPI_NAMESPACE_NODE     *DeviceNode;
    ACPI_STATUS             Status;


    Status = FUNC1 (NULL, DeviceName, ACPI_NS_NO_UPSEARCH,
        &DeviceNode);
    if (FUNC0 (Status))
    {
        goto ErrorExit;
    }

    return (FUNC2 (DeviceNode));


ErrorExit:
    return ("-No HID-");
}