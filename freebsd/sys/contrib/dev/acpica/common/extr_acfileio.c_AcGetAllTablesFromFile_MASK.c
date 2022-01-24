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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;
struct TYPE_4__ {struct TYPE_4__* Next; int /*<<< orphan*/ * Table; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  scalar_t__ ACPI_STATUS ;
typedef  TYPE_1__ ACPI_NEW_TABLE_DESC ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int ACPI_UINT32_MAX ; 
 scalar_t__ AE_BAD_HEADER ; 
 scalar_t__ AE_CTRL_TERMINATE ; 
 scalar_t__ AE_ERROR ; 
 scalar_t__ AE_NOT_EXIST ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_OK ; 
 scalar_t__ AE_TYPE ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC11 (
    char                    *Filename,
    UINT8                   GetOnlyAmlTables,
    ACPI_NEW_TABLE_DESC     **ReturnListHead)
{
    ACPI_NEW_TABLE_DESC     *ListHead = NULL;
    ACPI_NEW_TABLE_DESC     *ListTail = NULL;
    ACPI_NEW_TABLE_DESC     *TableDesc;
    FILE                    *File;
    ACPI_TABLE_HEADER       *Table = NULL;
    UINT32                  FileSize;
    ACPI_STATUS             Status = AE_OK;


    File = FUNC9 (Filename, "rb");
    if (!File)
    {
        FUNC10 (stderr, "Could not open input file: %s\n", Filename);
        if (errno == ENOENT)
        {
            return (AE_NOT_EXIST);
        }

        return (AE_ERROR);
    }

    /* Get the file size */

    FileSize = FUNC7 (File);
    if (FileSize == ACPI_UINT32_MAX)
    {
        Status = AE_ERROR;
        goto Exit;
    }

    FUNC10 (stderr,
        "Input file %s, Length 0x%X (%u) bytes\n",
        Filename, FileSize, FileSize);

    /* We must have at least one ACPI table header */

    if (FileSize < sizeof (ACPI_TABLE_HEADER))
    {
        Status = AE_BAD_HEADER;
        goto Exit;
    }

    /* Check for an non-binary file */

    if (!FUNC3 (File))
    {
        FUNC10 (stderr,
            "    %s: File does not appear to contain a valid AML table\n",
            Filename);
        Status = AE_TYPE;
        goto Exit;
    }

    /* Read all tables within the file */

    while (FUNC1 (Status))
    {
        /* Get one entire ACPI table */

        Status = FUNC2 (
            Filename, File, GetOnlyAmlTables, &Table);

        if (Status == AE_CTRL_TERMINATE)
        {
            Status = AE_OK;
            break;
        }
        else if (Status == AE_TYPE)
        {
            Status = AE_OK;
            goto Exit;
        }
        else if (FUNC0 (Status))
        {
            goto Exit;
        }

        /* Print table header for iASL/disassembler only */

#ifdef ACPI_ASL_COMPILER

        AcpiTbPrintTableHeader (0, Table);
#endif

        /* Allocate and link a table descriptor */

        TableDesc = FUNC4 (sizeof (ACPI_NEW_TABLE_DESC));
        if (!TableDesc)
        {
            FUNC5 (Table);
            Status = AE_NO_MEMORY;
            goto Exit;
        }

        TableDesc->Table = Table;
        TableDesc->Next = NULL;

        /* Link at the end of the local table list */

        if (!ListHead)
        {
            ListHead = TableDesc;
            ListTail = TableDesc;
        }
        else
        {
            ListTail->Next = TableDesc;
            ListTail = TableDesc;
        }
    }

    /* Add the local table list to the end of the global list */

    if (*ReturnListHead)
    {
        ListTail = *ReturnListHead;
        while (ListTail->Next)
        {
            ListTail = ListTail->Next;
        }

        ListTail->Next = ListHead;
    }
    else
    {
        *ReturnListHead = ListHead;
    }

Exit:
    FUNC8(File);
    return (Status);
}