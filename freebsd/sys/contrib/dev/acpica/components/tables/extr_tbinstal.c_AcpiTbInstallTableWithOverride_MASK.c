#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_9__ {int /*<<< orphan*/ * Tables; } ;
struct TYPE_8__ {int /*<<< orphan*/  Revision; } ;
struct TYPE_7__ {TYPE_2__* Pointer; int /*<<< orphan*/  Address; int /*<<< orphan*/  Flags; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_1__ ACPI_TABLE_DESC ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t AcpiGbl_DsdtIndex ; 
 TYPE_6__ AcpiGbl_RootTableList ; 
 int /*<<< orphan*/  FUNC1 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6 (
    ACPI_TABLE_DESC         *NewTableDesc,
    BOOLEAN                 Override,
    UINT32                  *TableIndex)
{
    UINT32                  i;
    ACPI_STATUS             Status;


    Status = FUNC1 (&i, NULL);
    if (FUNC0 (Status))
    {
        return;
    }

    /*
     * ACPI Table Override:
     *
     * Before we install the table, let the host OS override it with a new
     * one if desired. Any table within the RSDT/XSDT can be replaced,
     * including the DSDT which is pointed to by the FADT.
     */
    if (Override)
    {
        FUNC3 (NewTableDesc);
    }

    FUNC2 (&AcpiGbl_RootTableList.Tables[i],
        NewTableDesc->Address, NewTableDesc->Flags, NewTableDesc->Pointer);

    FUNC4 (NewTableDesc->Address, NewTableDesc->Pointer);

    /* This synchronizes AcpiGbl_DsdtIndex */

    *TableIndex = i;

    /* Set the global integer width (based upon revision of the DSDT) */

    if (i == AcpiGbl_DsdtIndex)
    {
        FUNC5 (NewTableDesc->Pointer->Revision);
    }
}