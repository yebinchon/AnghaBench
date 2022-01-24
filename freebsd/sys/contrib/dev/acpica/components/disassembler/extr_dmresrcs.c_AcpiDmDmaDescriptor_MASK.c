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
typedef  scalar_t__ UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  DmaChannelMask; int /*<<< orphan*/  Flags; } ;
struct TYPE_5__ {TYPE_1__ Dma; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * AcpiGbl_BmDecode ; 
 int /*<<< orphan*/ * AcpiGbl_SizDecode ; 
 int /*<<< orphan*/ * AcpiGbl_TypDecode ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

void
FUNC7 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    FUNC5 (Level);
    FUNC6 ("DMA (%s, %s, %s, ",
        AcpiGbl_TypDecode [FUNC1 (Resource->Dma.Flags, 5)],
        AcpiGbl_BmDecode  [FUNC0 (Resource->Dma.Flags, 2)],
        AcpiGbl_SizDecode [FUNC2 (Resource->Dma.Flags)]);

    /* Insert a descriptor name */

    FUNC4 ();
    FUNC6 (")\n");

    FUNC5 (Level + 1);
    FUNC3 (Resource->Dma.DmaChannelMask);
}