
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Peer; struct TYPE_4__* Child; scalar_t__ Depth; struct TYPE_4__* Parent; } ;
typedef TYPE_1__ DT_SUBTABLE ;



void
DtInsertSubtable (
    DT_SUBTABLE *ParentTable,
    DT_SUBTABLE *Subtable)
{
    DT_SUBTABLE *ChildTable;


    Subtable->Peer = ((void*)0);
    Subtable->Parent = ParentTable;
    Subtable->Depth = ParentTable->Depth + 1;



    if (!ParentTable->Child)
    {
        ParentTable->Child = Subtable;
    }
    else
    {


        ChildTable = ParentTable->Child;
        while (ChildTable->Peer)
        {
            ChildTable = ChildTable->Peer;
        }



        ChildTable->Peer = Subtable;
    }
}
