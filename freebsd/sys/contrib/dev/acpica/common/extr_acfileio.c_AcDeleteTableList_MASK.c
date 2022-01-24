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
struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef  TYPE_1__ ACPI_NEW_TABLE_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1 (
    ACPI_NEW_TABLE_DESC     *ListHead)
{
    ACPI_NEW_TABLE_DESC     *Current = ListHead;
    ACPI_NEW_TABLE_DESC     *Previous = Current;


    while (Current)
    {
        Current = Current->Next;
        FUNC0 (Previous);
        Previous = Current;
    }
}