#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ Signature; scalar_t__ Template; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_DMTABLE_DATA ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_RSDP_NAME ; 
 scalar_t__ ACPI_SIG_DSDT ; 
 scalar_t__ ACPI_SIG_FACS ; 
 scalar_t__ ACPI_SIG_OSDT ; 
 scalar_t__ ACPI_SIG_SSDT ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_1__* AcpiDmTableData ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static ACPI_STATUS
FUNC3 (
    void)
{
    const ACPI_DMTABLE_DATA *TableData;
    ACPI_STATUS             Status;


    FUNC2 (stderr, "Creating all supported Template files\n");

    /* Walk entire ACPI table data structure */

    for (TableData = AcpiDmTableData; TableData->Signature; TableData++)
    {
        /* If table has a template, create the template file */

        if (TableData->Template)
        {
            Status = FUNC1 (TableData->Signature,
                0, TableData);
            if (FUNC0 (Status))
            {
                return (Status);
            }
        }
    }

    /*
     * Create the special ACPI tables:
     * 1) DSDT/SSDT are AML tables, not data tables
     * 2) FACS and RSDP have non-standard headers
     */
    Status = FUNC1 (ACPI_SIG_DSDT, 0, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    Status = FUNC1 (ACPI_SIG_SSDT, 0, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    Status = FUNC1 (ACPI_SIG_OSDT, 0, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    Status = FUNC1 (ACPI_SIG_FACS, 0, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    Status = FUNC1 (ACPI_RSDP_NAME, 0, NULL);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    return (AE_OK);
}