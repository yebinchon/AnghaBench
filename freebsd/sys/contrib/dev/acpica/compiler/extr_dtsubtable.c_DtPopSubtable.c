
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* StackTop; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 TYPE_1__* AslGbl_SubtableStack ;

void
DtPopSubtable (
    void)
{
    DT_SUBTABLE *Subtable;


    Subtable = AslGbl_SubtableStack;

    if (Subtable)
    {
        AslGbl_SubtableStack = Subtable->StackTop;
    }
}
