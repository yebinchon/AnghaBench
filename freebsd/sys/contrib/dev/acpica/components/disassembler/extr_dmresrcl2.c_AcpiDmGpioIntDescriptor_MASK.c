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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_5__ {int PinConfig; size_t DebounceTimeout; int /*<<< orphan*/  IntFlags; } ;
struct TYPE_6__ {TYPE_1__ Gpio; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AcpiGbl_HeDecode ; 
 int /*<<< orphan*/ * AcpiGbl_LlDecode ; 
 size_t* AcpiGbl_PpcDecode ; 
 int /*<<< orphan*/ * AcpiGbl_ShrDecode ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,...) ; 

__attribute__((used)) static void
FUNC5 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    /* Dump the GpioInt-specific portion of the descriptor */

    /* EdgeLevel, ActiveLevel, Shared */

    FUNC3 (Level);
    FUNC4 ("GpioInt (%s, %s, %s, ",
        AcpiGbl_HeDecode [FUNC1 (Resource->Gpio.IntFlags)],
        AcpiGbl_LlDecode [FUNC0 (Resource->Gpio.IntFlags, 1)],
        AcpiGbl_ShrDecode [FUNC0 (Resource->Gpio.IntFlags, 3)]);

    /* PinConfig, DebounceTimeout */

    if (Resource->Gpio.PinConfig <= 3)
    {
        FUNC4 ("%s, ",
            AcpiGbl_PpcDecode[Resource->Gpio.PinConfig]);
    }
    else
    {
        FUNC4 ("0x%2.2X, ", Resource->Gpio.PinConfig);
    }
    FUNC4 ("0x%4.4X,\n", Resource->Gpio.DebounceTimeout);

    /* Dump the GpioInt/GpioIo common portion of the descriptor */

    FUNC2 (Info, Resource, Level);
}