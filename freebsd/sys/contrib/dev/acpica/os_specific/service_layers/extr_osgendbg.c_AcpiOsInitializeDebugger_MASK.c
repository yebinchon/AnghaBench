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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AcpiGbl_DbCommandComplete ; 
 int /*<<< orphan*/  AcpiGbl_DbCommandReady ; 
 int /*<<< orphan*/  AcpiGbl_DbCommandSignalsInitialized ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

ACPI_STATUS
FUNC4 (
    void)
{
    ACPI_STATUS             Status;


    /* Create command signals */

    Status = FUNC2 (&AcpiGbl_DbCommandReady);
    if (FUNC0 (Status))
    {
        return (Status);
    }
    Status = FUNC2 (&AcpiGbl_DbCommandComplete);
    if (FUNC0 (Status))
    {
        goto ErrorReady;
    }

    /* Initialize the states of the command signals */

    Status = FUNC1 (AcpiGbl_DbCommandComplete,
        ACPI_WAIT_FOREVER);
    if (FUNC0 (Status))
    {
        goto ErrorComplete;
    }
    Status = FUNC1 (AcpiGbl_DbCommandReady,
        ACPI_WAIT_FOREVER);
    if (FUNC0 (Status))
    {
        goto ErrorComplete;
    }

    AcpiGbl_DbCommandSignalsInitialized = TRUE;
    return (Status);

ErrorComplete:
    FUNC3 (AcpiGbl_DbCommandComplete);
ErrorReady:
    FUNC3 (AcpiGbl_DbCommandReady);
    return (Status);
}