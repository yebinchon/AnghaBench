
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* StackTop; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 TYPE_1__* AslGbl_SubtableStack ;

void
DtPushSubtable (
    DT_SUBTABLE *Subtable)
{

    Subtable->StackTop = AslGbl_SubtableStack;
    AslGbl_SubtableStack = Subtable;
}
