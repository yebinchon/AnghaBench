#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t ACPI_S_STATES_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * AcpiGbl_SleepStateNames ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t,...) ; 

__attribute__((used)) static void
FUNC9 (
    UINT8                   SleepState)
{
    ACPI_STATUS             Status;
    UINT8                   SleepTypeA;
    UINT8                   SleepTypeB;


    /* Validate parameter */

    if (SleepState > ACPI_S_STATES_MAX)
    {
        FUNC8 ("Sleep state %d out of range (%d max)\n",
            SleepState, ACPI_S_STATES_MAX);
        return;
    }

    FUNC8 ("\n---- Invoking sleep state S%d (%s):\n",
        SleepState, AcpiGbl_SleepStateNames[SleepState]);

    /* Get the values for the sleep type registers (for display only) */

    Status = FUNC5 (SleepState, &SleepTypeA, &SleepTypeB);
    if (FUNC1 (Status))
    {
        FUNC8 ("Could not evaluate [%s] method, %s\n",
            AcpiGbl_SleepStateNames[SleepState],
            FUNC4 (Status));
        return;
    }

    FUNC8 (
        "Register values for sleep state S%d: Sleep-A: %.2X, Sleep-B: %.2X\n",
        SleepState, SleepTypeA, SleepTypeB);

    /* Invoke the various sleep/wake interfaces */

    FUNC8 ("**** Sleep: Prepare to sleep (S%d) ****\n",
        SleepState);
    Status = FUNC3 (SleepState);
    if (FUNC1 (Status))
    {
        goto ErrorExit;
    }

    FUNC8 ("**** Sleep: Going to sleep (S%d) ****\n",
        SleepState);
    Status = FUNC2 (SleepState);
    if (FUNC1 (Status))
    {
        goto ErrorExit;
    }

    FUNC8 ("**** Wake: Prepare to return from sleep (S%d) ****\n",
        SleepState);
    Status = FUNC7 (SleepState);
    if (FUNC1 (Status))
    {
        goto ErrorExit;
    }

    FUNC8 ("**** Wake: Return from sleep (S%d) ****\n",
        SleepState);
    Status = FUNC6 (SleepState);
    if (FUNC1 (Status))
    {
        goto ErrorExit;
    }

    return;


ErrorExit:
    FUNC0 ((AE_INFO, Status, "During invocation of sleep state S%d",
        SleepState));
}