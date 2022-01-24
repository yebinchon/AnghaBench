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
typedef  int UINT64 ;
typedef  int UINT32 ;
struct TYPE_6__ {TYPE_1__* RegisterInfo; int /*<<< orphan*/  Flags; } ;
struct TYPE_5__ {int EnableForRun; int MaskForRun; int EnableForWake; int /*<<< orphan*/  StatusAddress; int /*<<< orphan*/  EnableAddress; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef  TYPE_2__ ACPI_GPE_EVENT_INFO ;
typedef  int /*<<< orphan*/  ACPI_EVENT_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EVENT_FLAG_ENABLED ; 
 int /*<<< orphan*/  ACPI_EVENT_FLAG_ENABLE_SET ; 
 int /*<<< orphan*/  ACPI_EVENT_FLAG_HAS_HANDLER ; 
 int /*<<< orphan*/  ACPI_EVENT_FLAG_MASKED ; 
 int /*<<< orphan*/  ACPI_EVENT_FLAG_STATUS_SET ; 
 int /*<<< orphan*/  ACPI_EVENT_FLAG_WAKE_ENABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ACPI_GPE_DISPATCH_NONE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *) ; 

ACPI_STATUS
FUNC5 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo,
    ACPI_EVENT_STATUS       *EventStatus)
{
    UINT64                  InByte;
    UINT32                  RegisterBit;
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo;
    ACPI_EVENT_STATUS       LocalEventStatus = 0;
    ACPI_STATUS             Status;


    FUNC1 ();


    if (!EventStatus)
    {
        return (AE_BAD_PARAMETER);
    }

    /* GPE currently handled? */

    if (FUNC2 (GpeEventInfo->Flags) !=
        ACPI_GPE_DISPATCH_NONE)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_HAS_HANDLER;
    }

    /* Get the info block for the entire GPE register */

    GpeRegisterInfo = GpeEventInfo->RegisterInfo;

    /* Get the register bitmask for this GPE */

    RegisterBit = FUNC3 (GpeEventInfo);

    /* GPE currently enabled? (enabled for runtime?) */

    if (RegisterBit & GpeRegisterInfo->EnableForRun)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_ENABLED;
    }

    /* GPE currently masked? (masked for runtime?) */

    if (RegisterBit & GpeRegisterInfo->MaskForRun)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_MASKED;
    }

    /* GPE enabled for wake? */

    if (RegisterBit & GpeRegisterInfo->EnableForWake)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_WAKE_ENABLED;
    }

    /* GPE currently enabled (enable bit == 1)? */

    Status = FUNC4 (&InByte, &GpeRegisterInfo->EnableAddress);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    if (RegisterBit & InByte)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_ENABLE_SET;
    }

    /* GPE currently active (status bit == 1)? */

    Status = FUNC4 (&InByte, &GpeRegisterInfo->StatusAddress);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    if (RegisterBit & InByte)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_STATUS_SET;
    }

    /* Set return value */

    (*EventStatus) = LocalEventStatus;
    return (AE_OK);
}