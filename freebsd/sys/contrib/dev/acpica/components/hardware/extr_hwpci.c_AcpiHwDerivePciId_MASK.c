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
typedef  int /*<<< orphan*/  ACPI_PCI_ID ;
typedef  int /*<<< orphan*/  ACPI_PCI_DEVICE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HwDerivePciId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC6 (
    ACPI_PCI_ID             *PciId,
    ACPI_HANDLE             RootPciDevice,
    ACPI_HANDLE             PciRegion)
{
    ACPI_STATUS             Status;
    ACPI_PCI_DEVICE         *ListHead;


    FUNC0 (HwDerivePciId);


    if (!PciId)
    {
        FUNC5 (AE_BAD_PARAMETER);
    }

    /* Build a list of PCI devices, from PciRegion up to RootPciDevice */

    Status = FUNC2 (RootPciDevice, PciRegion, &ListHead);
    if (FUNC1 (Status))
    {
        /* Walk the list, updating the PCI device/function/bus numbers */

        Status = FUNC4 (PciId, ListHead);

        /* Delete the list */

        FUNC3 (ListHead);
    }

    FUNC5 (Status);
}