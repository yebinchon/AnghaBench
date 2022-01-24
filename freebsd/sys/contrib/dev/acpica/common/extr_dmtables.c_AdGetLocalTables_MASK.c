#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_6__ {int /*<<< orphan*/  OemTableId; int /*<<< orphan*/  Length; int /*<<< orphan*/  Signature; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  AE_NO_ACPI_TABLES ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC6 (
    void)
{
    ACPI_STATUS             Status;
    ACPI_TABLE_HEADER       TableHeader;
    ACPI_TABLE_HEADER       *NewTable;
    UINT32                  TableIndex;


    /* Get the DSDT via table override */

    FUNC1 (TableHeader.Signature, ACPI_SIG_DSDT);
    Status = FUNC2 (&TableHeader, &NewTable);
    if (FUNC0 (Status) || !NewTable)
    {
        FUNC5 (stderr, "Could not obtain DSDT\n");
        return (AE_NO_ACPI_TABLES);
    }

    FUNC4 (NewTable, NewTable->Length,
        ACPI_SIG_DSDT, NewTable->OemTableId);

    /* Store DSDT in the Table Manager */

    Status = FUNC3 (NewTable, &TableIndex);
    if (FUNC0 (Status))
    {
        FUNC5 (stderr, "Could not store DSDT\n");
        return (AE_NO_ACPI_TABLES);
    }

    return (AE_OK);
}