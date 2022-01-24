#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_4__ {int Flags; int /*<<< orphan*/  IrqMask; } ;
struct TYPE_5__ {TYPE_1__ Irq; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 size_t FUNC1 (int,int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/ * AcpiGbl_HeDecode ; 
 int /*<<< orphan*/ * AcpiGbl_IrqDecode ; 
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

    FUNC5 (Level);
    FUNC6 ("%s (",
        AcpiGbl_IrqDecode [FUNC2 (Length)]);

    /* Decode flags byte if present */

    if (Length & 1)
    {
        FUNC6 ("%s, %s, %s, ",
            AcpiGbl_HeDecode [FUNC2 (Resource->Irq.Flags)],
            AcpiGbl_LlDecode [FUNC0 (Resource->Irq.Flags, 3)],
            AcpiGbl_ShrDecode [FUNC1 (Resource->Irq.Flags, 4)]);
    }

    /* Insert a descriptor name */

    FUNC4 ();
    FUNC6 (")\n");

    FUNC5 (Level + 1);
    FUNC3 (Resource->Irq.IrqMask);
}