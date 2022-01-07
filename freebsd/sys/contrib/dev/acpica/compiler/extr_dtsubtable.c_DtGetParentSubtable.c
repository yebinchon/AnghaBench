
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Parent; } ;
typedef TYPE_1__ DT_SUBTABLE ;



DT_SUBTABLE *
DtGetParentSubtable (
    DT_SUBTABLE *Subtable)
{

    if (!Subtable)
    {
        return (((void*)0));
    }

    return (Subtable->Parent);
}
