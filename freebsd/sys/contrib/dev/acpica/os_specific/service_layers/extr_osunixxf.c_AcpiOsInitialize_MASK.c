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
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiGbl_OutputFile ; 
 int /*<<< orphan*/  AcpiGbl_PrintLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  stdout ; 

ACPI_STATUS
FUNC3 (
    void)
{
    ACPI_STATUS            Status;


    AcpiGbl_OutputFile = stdout;

    FUNC2 ();

    Status = FUNC1 (&AcpiGbl_PrintLock);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    return (AE_OK);
}