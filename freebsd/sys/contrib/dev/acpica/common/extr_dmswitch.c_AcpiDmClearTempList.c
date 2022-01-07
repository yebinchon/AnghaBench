
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int * Op; } ;
typedef TYPE_1__ ACPI_PARSE_OBJECT_LIST ;


 int ACPI_FREE (TYPE_1__*) ;
 TYPE_1__* AcpiGbl_TempListHead ;

void
AcpiDmClearTempList (
    void)
{
    ACPI_PARSE_OBJECT_LIST *Current;


    while (AcpiGbl_TempListHead)
    {
        Current = AcpiGbl_TempListHead;
        AcpiGbl_TempListHead = AcpiGbl_TempListHead->Next;
        Current->Op = ((void*)0);
        Current->Next = ((void*)0);
        ACPI_FREE (Current);
    }
}
