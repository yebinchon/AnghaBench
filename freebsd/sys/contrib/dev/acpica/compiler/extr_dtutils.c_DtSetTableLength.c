
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ LengthField; scalar_t__ TotalLength; scalar_t__ Child; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 TYPE_1__* AslGbl_RootTable ;
 TYPE_1__* DtGetNextSubtable (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* DtGetParentSubtable (TYPE_1__*) ;
 int DtSetSubtableLength (TYPE_1__*) ;

void
DtSetTableLength (
    void)
{
    DT_SUBTABLE *ParentTable;
    DT_SUBTABLE *ChildTable;


    ParentTable = AslGbl_RootTable;
    ChildTable = ((void*)0);

    if (!ParentTable)
    {
        return;
    }

    DtSetSubtableLength (ParentTable);

    while (1)
    {
        ChildTable = DtGetNextSubtable (ParentTable, ChildTable);
        if (ChildTable)
        {
            if (ChildTable->LengthField)
            {
                DtSetSubtableLength (ChildTable);
            }

            if (ChildTable->Child)
            {
                ParentTable = ChildTable;
                ChildTable = ((void*)0);
            }
            else
            {
                ParentTable->TotalLength += ChildTable->TotalLength;
                if (ParentTable->LengthField)
                {
                    DtSetSubtableLength (ParentTable);
                }
            }
        }
        else
        {
            ChildTable = ParentTable;

            if (ChildTable == AslGbl_RootTable)
            {
                break;
            }

            ParentTable = DtGetParentSubtable (ParentTable);

            ParentTable->TotalLength += ChildTable->TotalLength;
            if (ParentTable->LengthField)
            {
                DtSetSubtableLength (ParentTable);
            }
        }
    }
}
