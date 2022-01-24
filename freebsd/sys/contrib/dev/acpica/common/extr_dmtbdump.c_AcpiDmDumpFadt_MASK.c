#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Length; int /*<<< orphan*/  Revision; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ ACPI_FADT_V1_SIZE ; 
 scalar_t__ ACPI_FADT_V2_SIZE ; 
 scalar_t__ ACPI_FADT_V3_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiDmTableInfoFadt1 ; 
 int /*<<< orphan*/  AcpiDmTableInfoFadt2 ; 
 int /*<<< orphan*/  AcpiDmTableInfoFadt3 ; 
 int /*<<< orphan*/  AcpiDmTableInfoFadt5 ; 
 int /*<<< orphan*/  AcpiDmTableInfoFadt6 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 

void
FUNC4 (
    ACPI_TABLE_HEADER       *Table)
{
    ACPI_STATUS             Status;


    /* Always dump the minimum FADT revision 1 fields (ACPI 1.0) */

    Status = FUNC1 (Table->Length, 0, Table, 0,
        AcpiDmTableInfoFadt1);
    if (FUNC0 (Status))
    {
        return;
    }

    /* Check for FADT revision 2 fields (ACPI 1.0B MS extensions) */

    if ((Table->Length > ACPI_FADT_V1_SIZE) &&
        (Table->Length <= ACPI_FADT_V2_SIZE))
    {
        Status = FUNC1 (Table->Length, 0, Table, 0,
            AcpiDmTableInfoFadt2);
        if (FUNC0 (Status))
        {
            return;
        }
    }

    /* Check for FADT revision 3/4 fields and up (ACPI 2.0+ extended data) */

    else if (Table->Length > ACPI_FADT_V2_SIZE)
    {
        Status = FUNC1 (Table->Length, 0, Table, 0,
            AcpiDmTableInfoFadt3);
        if (FUNC0 (Status))
        {
            return;
        }

        /* Check for FADT revision 5 fields and up (ACPI 5.0+) */

        if (Table->Length > ACPI_FADT_V3_SIZE)
        {
            Status = FUNC1 (Table->Length, 0, Table, 0,
                AcpiDmTableInfoFadt5);
            if (FUNC0 (Status))
            {
                return;
            }
        }

        /* Check for FADT revision 6 fields and up (ACPI 6.0+) */

        if (Table->Length > ACPI_FADT_V3_SIZE)
        {
            Status = FUNC1 (Table->Length, 0, Table, 0,
                AcpiDmTableInfoFadt6);
            if (FUNC0 (Status))
            {
                return;
            }
        }
    }

    /* Validate various fields in the FADT, including length */

    FUNC3 (Table, Table->Length);

    /* Validate FADT length against the revision */

    FUNC2 (Table->Revision, Table->Length);
}