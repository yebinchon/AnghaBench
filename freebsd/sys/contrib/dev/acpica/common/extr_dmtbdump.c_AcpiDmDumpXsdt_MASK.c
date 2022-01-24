#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  size_t UINT32 ;
struct TYPE_6__ {int /*<<< orphan*/ * TableOffsetEntry; } ;
struct TYPE_5__ {int Length; } ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TABLE_XSDT ; 
 int /*<<< orphan*/  FUNC2 (size_t,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

void
FUNC4 (
    ACPI_TABLE_HEADER       *Table)
{
    UINT64                  *Array;
    UINT32                  Entries;
    UINT32                  Offset;
    UINT32                  i;


    /* Point to start of table pointer array */

    Array = FUNC0 (ACPI_TABLE_XSDT, Table)->TableOffsetEntry;
    Offset = sizeof (ACPI_TABLE_HEADER);

    /* XSDT uses 64-bit pointers */

    Entries = (Table->Length - sizeof (ACPI_TABLE_HEADER)) / sizeof (UINT64);

    for (i = 0; i < Entries; i++)
    {
        FUNC2 (Offset, sizeof (UINT64), "ACPI Table Address", i);
        FUNC3 ("%8.8X%8.8X\n", FUNC1 (Array[i]));
        Offset += sizeof (UINT64);
    }
}