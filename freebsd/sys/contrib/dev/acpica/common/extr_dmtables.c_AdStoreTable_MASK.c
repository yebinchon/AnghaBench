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
typedef  int /*<<< orphan*/  ACPI_TABLE_DESC ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_TABLE_HEADER       *Table,
    UINT32                  *TableIndex)
{
    ACPI_STATUS             Status;
    ACPI_TABLE_DESC         *TableDesc;


    Status = FUNC2 (TableIndex, &TableDesc);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    /* Initialize added table */

    FUNC3 (TableDesc, FUNC1 (Table),
        ACPI_TABLE_ORIGIN_INTERNAL_VIRTUAL, Table);
    Status = FUNC4 (TableDesc);
    return (Status);
}