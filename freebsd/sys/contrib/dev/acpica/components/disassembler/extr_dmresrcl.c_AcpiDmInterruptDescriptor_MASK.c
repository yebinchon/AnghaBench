#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_5__ {int InterruptCount; scalar_t__* Interrupts; int /*<<< orphan*/  ResourceLength; int /*<<< orphan*/  Flags; } ;
struct TYPE_6__ {TYPE_1__ ExtendedIrq; } ;
typedef  int /*<<< orphan*/  AML_RESOURCE_EXTENDED_IRQ ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AcpiGbl_ConsumeDecode ; 
 int /*<<< orphan*/ * AcpiGbl_HeDecode ; 
 int /*<<< orphan*/ * AcpiGbl_LlDecode ; 
 int /*<<< orphan*/ * AcpiGbl_ShrDecode ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{
    UINT32                  i;


    FUNC4 (Level);
    FUNC6 ("Interrupt (%s, %s, %s, %s, ",
        AcpiGbl_ConsumeDecode [FUNC2 (Resource->ExtendedIrq.Flags)],
        AcpiGbl_HeDecode [FUNC0 (Resource->ExtendedIrq.Flags, 1)],
        AcpiGbl_LlDecode [FUNC0 (Resource->ExtendedIrq.Flags, 2)],
        AcpiGbl_ShrDecode [FUNC1 (Resource->ExtendedIrq.Flags, 3)]);

    /*
     * The ResourceSource fields are optional and appear after the interrupt
     * list. Must compute length based on length of the list. First xrupt
     * is included in the struct (reason for -1 below)
     */
    FUNC5 (Resource,
        sizeof (AML_RESOURCE_EXTENDED_IRQ) +
            ((UINT32) Resource->ExtendedIrq.InterruptCount - 1) * sizeof (UINT32),
        Resource->ExtendedIrq.ResourceLength);

    /* Insert a descriptor name */

    FUNC3 ();
    FUNC6 (")\n");

    /* Dump the interrupt list */

    FUNC4 (Level);
    FUNC6 ("{\n");
    for (i = 0; i < Resource->ExtendedIrq.InterruptCount; i++)
    {
        FUNC4 (Level + 1);
        FUNC6 ("0x%8.8X,\n",
            (UINT32) Resource->ExtendedIrq.Interrupts[i]);
    }

    FUNC4 (Level);
    FUNC6 ("}\n");
}