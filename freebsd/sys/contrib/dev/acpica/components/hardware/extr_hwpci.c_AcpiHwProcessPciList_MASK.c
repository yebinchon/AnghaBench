#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_7__ {struct TYPE_7__* Next; int /*<<< orphan*/  Device; } ;
struct TYPE_6__ {int /*<<< orphan*/  Function; int /*<<< orphan*/  Device; int /*<<< orphan*/  Bus; int /*<<< orphan*/  Segment; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_PCI_ID ;
typedef  TYPE_2__ ACPI_PCI_DEVICE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HwProcessPciList ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC4 (
    ACPI_PCI_ID             *PciId,
    ACPI_PCI_DEVICE         *ListHead)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_PCI_DEVICE         *Info;
    UINT16                  BusNumber;
    BOOLEAN                 IsBridge = TRUE;


    FUNC2 (HwProcessPciList);


    FUNC0 ((ACPI_DB_OPREGION,
        "Input PciId:  Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X\n",
        PciId->Segment, PciId->Bus, PciId->Device, PciId->Function));

    BusNumber = PciId->Bus;

    /*
     * Descend down the namespace tree, collecting PCI device, function,
     * and bus numbers. BusNumber is only important for PCI bridges.
     * Algorithm: As we descend the tree, use the last valid PCI device,
     * function, and bus numbers that are discovered, and assign them
     * to the PCI ID for the target device.
     */
    Info = ListHead;
    while (Info)
    {
        Status = FUNC3 (PciId, Info->Device,
            &BusNumber, &IsBridge);
        if (FUNC1 (Status))
        {
            return (Status);
        }

        Info = Info->Next;
    }

    FUNC0 ((ACPI_DB_OPREGION,
        "Output PciId: Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X "
        "Status %X BusNumber %X IsBridge %X\n",
        PciId->Segment, PciId->Bus, PciId->Device, PciId->Function,
        Status, BusNumber, IsBridge));

    return (AE_OK);
}