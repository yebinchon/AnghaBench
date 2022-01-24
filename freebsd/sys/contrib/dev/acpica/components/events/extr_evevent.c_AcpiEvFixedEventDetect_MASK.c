#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_2__ {size_t StatusBitMask; size_t EnableBitMask; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_EVENT_TYPE_FIXED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t ACPI_INTERRUPT_NOT_HANDLED ; 
 size_t ACPI_NUM_FIXED_EVENTS ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_ENABLE ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_STATUS ; 
 size_t FUNC3 (size_t) ; 
 int /*<<< orphan*/ * AcpiFixedEventCount ; 
 TYPE_1__* AcpiGbl_FixedEventInfo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_GlobalEventHandlerContext ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  EvFixedEventDetect ; 

UINT32
FUNC6 (
    void)
{
    UINT32                  IntStatus = ACPI_INTERRUPT_NOT_HANDLED;
    UINT32                  FixedStatus;
    UINT32                  FixedEnable;
    UINT32                  i;
    ACPI_STATUS             Status;


    FUNC2 (EvFixedEventDetect);


    /*
     * Read the fixed feature status and enable registers, as all the cases
     * depend on their values. Ignore errors here.
     */
    Status = FUNC5 (ACPI_REGISTER_PM1_STATUS, &FixedStatus);
    Status |= FUNC5 (ACPI_REGISTER_PM1_ENABLE, &FixedEnable);
    if (FUNC1 (Status))
    {
        return (IntStatus);
    }

    FUNC0 ((ACPI_DB_INTERRUPTS,
        "Fixed Event Block: Enable %08X Status %08X\n",
        FixedEnable, FixedStatus));

    /*
     * Check for all possible Fixed Events and dispatch those that are active
     */
    for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++)
    {
        /* Both the status and enable bits must be on for this event */

        if ((FixedStatus & AcpiGbl_FixedEventInfo[i].StatusBitMask) &&
            (FixedEnable & AcpiGbl_FixedEventInfo[i].EnableBitMask))
        {
            /*
             * Found an active (signalled) event. Invoke global event
             * handler if present.
             */
            AcpiFixedEventCount[i]++;
            if (&AcpiGbl_GlobalEventHandler)
            {
                FUNC4 (ACPI_EVENT_TYPE_FIXED, NULL,
                     i, AcpiGbl_GlobalEventHandlerContext);
            }

            IntStatus |= FUNC3 (i);
        }
    }

    return (IntStatus);
}