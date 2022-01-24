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
struct TYPE_4__ {struct TYPE_4__* Next; int /*<<< orphan*/ * Op; } ;
typedef  TYPE_1__ ACPI_PARSE_OBJECT_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* AcpiGbl_TempListHead ; 

void
FUNC1 (
    void)
{
    ACPI_PARSE_OBJECT_LIST      *Current;


    while (AcpiGbl_TempListHead)
    {
        Current = AcpiGbl_TempListHead;
        AcpiGbl_TempListHead = AcpiGbl_TempListHead->Next;
        Current->Op = NULL;
        Current->Next = NULL;
        FUNC0 (Current);
    }
}