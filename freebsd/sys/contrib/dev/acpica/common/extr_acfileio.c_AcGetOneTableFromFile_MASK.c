#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
struct TYPE_9__ {char* Signature; int Length; } ;
typedef  int INT32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_SIZE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,long) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC8 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static ACPI_STATUS
FUNC11 (
    char                    *Filename,
    FILE                    *File,
    UINT8                   GetOnlyAmlTables,
    ACPI_TABLE_HEADER       **ReturnTable)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_TABLE_HEADER       TableHeader;
    ACPI_TABLE_HEADER       *Table;
    INT32                   Count;
    long                    TableOffset;


    *ReturnTable = NULL;

    /* Get the table header to examine signature and length */

    TableOffset = FUNC10 (File);
    Count = FUNC8 (&TableHeader, 1, sizeof (ACPI_TABLE_HEADER), File);
    if (Count != sizeof (ACPI_TABLE_HEADER))
    {
        return (AE_CTRL_TERMINATE);
    }

    if (GetOnlyAmlTables)
    {
        /* Validate the table signature/header (limited ASCII chars) */

        Status = FUNC2 (File, TableOffset);
        if (FUNC0 (Status))
        {
            return (Status);
        }

        /*
         * Table must be an AML table (DSDT/SSDT).
         * Used for iASL -e option only.
         */
        if (!FUNC6 (&TableHeader))
        {
            FUNC7 (stderr,
                "    %s: Table [%4.4s] is not an AML table - ignoring\n",
                Filename, TableHeader.Signature);

            return (AE_TYPE);
        }
    }

    /* Allocate a buffer for the entire table */

    Table = FUNC3 ((ACPI_SIZE) TableHeader.Length);
    if (!Table)
    {
        return (AE_NO_MEMORY);
    }

    /* Read the entire ACPI table, including header */

    FUNC9 (File, TableOffset, SEEK_SET);

    Count = FUNC8 (Table, 1, TableHeader.Length, File);

    /*
     * Checks for data table headers happen later in the execution. Only verify
     * for Aml tables at this point in the code.
     */
    if (GetOnlyAmlTables && Count != (INT32) TableHeader.Length)
    {
        Status = AE_ERROR;
        goto ErrorExit;
    }

    /* Validate the checksum (just issue a warning) */

    Status = FUNC5 (Table, TableHeader.Length);
    if (FUNC0 (Status))
    {
        Status = FUNC1 (Table);
        if (FUNC0 (Status))
        {
            goto ErrorExit;
        }
    }

    *ReturnTable = Table;
    return (AE_OK);


ErrorExit:
    FUNC4 (Table);
    return (Status);
}