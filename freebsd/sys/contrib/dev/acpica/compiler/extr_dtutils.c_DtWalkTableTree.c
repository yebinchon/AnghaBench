
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* Peer; scalar_t__ Child; } ;
typedef int (* DT_WALK_CALLBACK ) (TYPE_1__*,void*,void*) ;
typedef TYPE_1__ DT_SUBTABLE ;


 TYPE_1__* AslGbl_RootTable ;
 TYPE_1__* DtGetNextSubtable (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* DtGetParentSubtable (TYPE_1__*) ;

void
DtWalkTableTree (
    DT_SUBTABLE *StartTable,
    DT_WALK_CALLBACK UserFunction,
    void *Context,
    void *ReturnValue)
{
    DT_SUBTABLE *ParentTable;
    DT_SUBTABLE *ChildTable;


    ParentTable = StartTable;
    ChildTable = ((void*)0);

    if (!ParentTable)
    {
        return;
    }

    UserFunction (ParentTable, Context, ReturnValue);

    while (1)
    {
        ChildTable = DtGetNextSubtable (ParentTable, ChildTable);
        if (ChildTable)
        {
            UserFunction (ChildTable, Context, ReturnValue);

            if (ChildTable->Child)
            {
                ParentTable = ChildTable;
                ChildTable = ((void*)0);
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

            if (ChildTable->Peer == StartTable)
            {
                break;
            }
        }
    }
}
