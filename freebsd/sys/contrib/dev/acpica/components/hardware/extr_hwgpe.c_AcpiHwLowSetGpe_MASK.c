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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT32 ;
struct TYPE_6__ {TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int EnableMask; int MaskForRun; int /*<<< orphan*/  EnableAddress; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef  TYPE_2__ ACPI_GPE_EVENT_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
#define  ACPI_GPE_CONDITIONAL_ENABLE 130 
#define  ACPI_GPE_DISABLE 129 
#define  ACPI_GPE_ENABLE 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ACPI_STATUS
FUNC8 (
    ACPI_GPE_EVENT_INFO     *GpeEventInfo,
    UINT32                  Action)
{
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo;
    ACPI_STATUS             Status = AE_OK;
    UINT64                  EnableMask;
    UINT32                  RegisterBit;


    FUNC3 ();


    /* Get the info block for the entire GPE register */

    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        return (AE_NOT_EXIST);
    }

    /* Get current value of the enable register that contains this GPE */

    Status = FUNC6 (&EnableMask, &GpeRegisterInfo->EnableAddress);
    if (FUNC2 (Status))
    {
        return (Status);
    }

    /* Set or clear just the bit that corresponds to this GPE */

    RegisterBit = FUNC5 (GpeEventInfo);
    switch (Action)
    {
    case ACPI_GPE_CONDITIONAL_ENABLE:

        /* Only enable if the corresponding EnableMask bit is set */

        if (!(RegisterBit & GpeRegisterInfo->EnableMask))
        {
            return (AE_BAD_PARAMETER);
        }

        /*lint -fallthrough */

    case ACPI_GPE_ENABLE:

        FUNC4 (EnableMask, RegisterBit);
        break;

    case ACPI_GPE_DISABLE:

        FUNC0 (EnableMask, RegisterBit);
        break;

    default:

        FUNC1 ((AE_INFO, "Invalid GPE Action, %u", Action));
        return (AE_BAD_PARAMETER);
    }

    if (!(RegisterBit & GpeRegisterInfo->MaskForRun))
    {
        /* Write the updated enable mask */

        Status = FUNC7 (EnableMask, &GpeRegisterInfo->EnableAddress);
    }
    return (Status);
}