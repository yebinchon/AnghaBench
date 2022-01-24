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
typedef  int /*<<< orphan*/  ACPI_OWNER_ID ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_EVENT_LOAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TbLoadTable ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC9 (
    UINT32                  TableIndex,
    ACPI_NAMESPACE_NODE     *ParentNode)
{
    ACPI_TABLE_HEADER       *Table;
    ACPI_STATUS             Status;
    ACPI_OWNER_ID           OwnerId;


    FUNC1 (TbLoadTable);


    /*
     * Note: Now table is "INSTALLED", it must be validated before
     * using.
     */
    Status = FUNC4 (TableIndex, &Table);
    if (FUNC0 (Status))
    {
        FUNC8 (Status);
    }

    Status = FUNC5 (TableIndex, ParentNode);
    if (FUNC0 (Status))
    {
        FUNC8 (Status);
    }

    /*
     * Update GPEs for any new _Lxx/_Exx methods. Ignore errors. The host is
     * responsible for discovering any new wake GPEs by running _PRW methods
     * that may have been loaded by this table.
     */
    Status = FUNC6 (TableIndex, &OwnerId);
    if (FUNC2 (Status))
    {
        FUNC3 (OwnerId);
    }

    /* Invoke table handler */

    FUNC7 (ACPI_TABLE_EVENT_LOAD, Table);
    FUNC8 (Status);
}