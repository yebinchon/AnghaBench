
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ DT_FIELD ;


 TYPE_1__* AslGbl_FieldList ;

void
DtLinkField (
    DT_FIELD *Field)
{
    DT_FIELD *Prev;
    DT_FIELD *Next;


    Prev = Next = AslGbl_FieldList;

    while (Next)
    {
        Prev = Next;
        Next = Next->Next;
    }

    if (Prev)
    {
        Prev->Next = Field;
    }
    else
    {
        AslGbl_FieldList = Field;
    }
}
