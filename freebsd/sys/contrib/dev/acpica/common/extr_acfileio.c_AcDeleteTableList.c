
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ ACPI_NEW_TABLE_DESC ;


 int AcpiOsFree (TYPE_1__*) ;

void
AcDeleteTableList (
    ACPI_NEW_TABLE_DESC *ListHead)
{
    ACPI_NEW_TABLE_DESC *Current = ListHead;
    ACPI_NEW_TABLE_DESC *Previous = Current;


    while (Current)
    {
        Current = Current->Next;
        AcpiOsFree (Previous);
        Previous = Current;
    }
}
