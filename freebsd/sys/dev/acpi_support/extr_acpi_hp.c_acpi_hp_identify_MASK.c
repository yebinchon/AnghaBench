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
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_HP_WMI_BIOS_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(driver_t *driver, device_t parent)
{

	/* Don't do anything if driver is disabled. */
	if (FUNC2("hp"))
		return;

	/* Add only a single device instance. */
	if (FUNC3(parent, "acpi_hp", -1) != NULL)
		return;

	/* Check BIOS GUID to see whether system is compatible. */
	if (!FUNC0(parent,
	    ACPI_HP_WMI_BIOS_GUID))
		return;

	if (FUNC1(parent, 0, "acpi_hp", -1) == NULL)
		FUNC4(parent, "add acpi_hp child failed\n");
}