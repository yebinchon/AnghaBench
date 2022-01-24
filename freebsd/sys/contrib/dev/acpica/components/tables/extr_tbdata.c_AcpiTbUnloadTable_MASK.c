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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_EVENT_UNLOAD ; 
 int /*<<< orphan*/  AE_NOT_EXIST ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TbUnloadTable ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    UINT32                  TableIndex)
{
    ACPI_STATUS             Status = AE_OK;
    ACPI_TABLE_HEADER       *Table;


    FUNC1 (TbUnloadTable);


    /* Ensure the table is still loaded */

    if (!FUNC5 (TableIndex))
    {
        FUNC9 (AE_NOT_EXIST);
    }

    /* Invoke table handler */

    Status = FUNC3 (TableIndex, &Table);
    if (FUNC2 (Status))
    {
        FUNC6 (ACPI_TABLE_EVENT_UNLOAD, Table);
    }

    /* Delete the portion of the namespace owned by this table */

    Status = FUNC4 (TableIndex);
    if (FUNC0 (Status))
    {
        FUNC9 (Status);
    }

    (void) FUNC7 (TableIndex);
    FUNC8 (TableIndex, FALSE);
    FUNC9 (Status);
}