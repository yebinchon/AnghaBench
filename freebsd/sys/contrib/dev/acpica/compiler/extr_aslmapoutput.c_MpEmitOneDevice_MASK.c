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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/  Description; } ;
typedef  TYPE_1__ AH_DEVICE_ID ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ACPI_NAMESPACE_NODE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_FILE_MAP_OUTPUT ; 
 TYPE_1__* FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC7 (
    ACPI_HANDLE             ObjHandle,
    UINT32                  NestingLevel,
    void                    *Context,
    void                    **ReturnValue)
{
    char                    *DevicePathname;
    char                    *DdnString;
    char                    *HidString;
    const AH_DEVICE_ID      *HidInfo;


    /* Device pathname */

    DevicePathname = FUNC3 (
        FUNC0 (ACPI_NAMESPACE_NODE, ObjHandle));

    FUNC4 (ASL_FILE_MAP_OUTPUT, "%-32s", DevicePathname);

    /* _HID or _DDN */

    HidString = FUNC6 (
        FUNC0 (ACPI_NAMESPACE_NODE, ObjHandle));
    FUNC4 (ASL_FILE_MAP_OUTPUT, "%8s", HidString);

    HidInfo = FUNC2 (HidString);
    if (HidInfo)
    {
        FUNC4 (ASL_FILE_MAP_OUTPUT, "    // %s",
            HidInfo->Description);
    }
    else if ((DdnString = FUNC5 (DevicePathname)))
    {
        FUNC4 (ASL_FILE_MAP_OUTPUT, "    // %s (_DDN)", DdnString);
    }

    FUNC4 (ASL_FILE_MAP_OUTPUT, "\n");
    FUNC1 (DevicePathname);
    return (AE_OK);
}