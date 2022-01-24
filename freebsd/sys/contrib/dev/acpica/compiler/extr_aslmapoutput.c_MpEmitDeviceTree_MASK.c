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

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  ASL_FILE_MAP_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MpEmitOneDevice ; 

__attribute__((used)) static void
FUNC2 (
    void)
{

    FUNC1 (ASL_FILE_MAP_OUTPUT, "\n\nACPI Device Tree\n");
    FUNC1 (ASL_FILE_MAP_OUTPUT,     "----------------\n\n");

    FUNC1 (ASL_FILE_MAP_OUTPUT, "Device Pathname                   "
        "_HID      Description\n\n");

    /* Walk the namespace from the root */

    (void) FUNC0 (ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, MpEmitOneDevice, NULL, NULL, NULL);
}