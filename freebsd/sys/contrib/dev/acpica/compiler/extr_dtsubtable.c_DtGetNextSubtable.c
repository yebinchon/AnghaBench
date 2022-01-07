
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Peer; struct TYPE_5__* Child; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 int ACPI_FUNCTION_ENTRY () ;

DT_SUBTABLE *
DtGetNextSubtable (
    DT_SUBTABLE *ParentTable,
    DT_SUBTABLE *ChildTable)
{
    ACPI_FUNCTION_ENTRY ();


    if (!ChildTable)
    {


        return (ParentTable->Child);
    }



    return (ChildTable->Peer);
}
