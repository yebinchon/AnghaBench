#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  void* UINT16 ;
struct TYPE_4__ {void* Bus; int /*<<< orphan*/  Function; int /*<<< orphan*/  Device; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PCI_ID ;
typedef  scalar_t__ ACPI_OBJECT_TYPE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  METHOD_NAME__ADR ; 
 int /*<<< orphan*/  PCI_CFG_HEADER_TYPE_REG ; 
 int /*<<< orphan*/  PCI_CFG_PRIMARY_BUS_NUMBER_REG ; 
 int /*<<< orphan*/  PCI_CFG_SECONDARY_BUS_NUMBER_REG ; 
 scalar_t__ PCI_HEADER_TYPE_MASK ; 
 scalar_t__ PCI_TYPE_BRIDGE ; 
 scalar_t__ PCI_TYPE_CARDBUS_BRIDGE ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC7 (
    ACPI_PCI_ID             *PciId,
    ACPI_HANDLE             PciDevice,
    UINT16                  *BusNumber,
    BOOLEAN                 *IsBridge)
{
    ACPI_STATUS             Status;
    ACPI_OBJECT_TYPE        ObjectType;
    UINT64                  ReturnValue;
    UINT64                  PciValue;


    /* We only care about objects of type Device */

    Status = FUNC4 (PciDevice, &ObjectType);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    if (ObjectType != ACPI_TYPE_DEVICE)
    {
        return (AE_OK);
    }

    /* We need an _ADR. Ignore device if not present */

    Status = FUNC6 (METHOD_NAME__ADR,
        PciDevice, &ReturnValue);
    if (FUNC0 (Status))
    {
        return (AE_OK);
    }

    /*
     * From _ADR, get the PCI Device and Function and
     * update the PCI ID.
     */
    PciId->Device = FUNC1 (FUNC2 (ReturnValue));
    PciId->Function = FUNC3 (FUNC2 (ReturnValue));

    /*
     * If the previous device was a bridge, use the previous
     * device bus number
     */
    if (*IsBridge)
    {
        PciId->Bus = *BusNumber;
    }

    /*
     * Get the bus numbers from PCI Config space:
     *
     * First, get the PCI HeaderType
     */
    *IsBridge = FALSE;
    Status = FUNC5 (PciId,
        PCI_CFG_HEADER_TYPE_REG, &PciValue, 8);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* We only care about bridges (1=PciBridge, 2=CardBusBridge) */

    PciValue &= PCI_HEADER_TYPE_MASK;

    if ((PciValue != PCI_TYPE_BRIDGE) &&
        (PciValue != PCI_TYPE_CARDBUS_BRIDGE))
    {
        return (AE_OK);
    }

    /* Bridge: Get the Primary BusNumber */

    Status = FUNC5 (PciId,
        PCI_CFG_PRIMARY_BUS_NUMBER_REG, &PciValue, 8);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    *IsBridge = TRUE;
    PciId->Bus = (UINT16) PciValue;

    /* Bridge: Get the Secondary BusNumber */

    Status = FUNC5 (PciId,
        PCI_CFG_SECONDARY_BUS_NUMBER_REG, &PciValue, 8);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    *BusNumber = (UINT16) PciValue;
    return (AE_OK);
}