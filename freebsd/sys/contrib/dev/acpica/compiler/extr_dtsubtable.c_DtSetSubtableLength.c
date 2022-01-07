
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SizeOfLengthField; int TotalLength; int LengthField; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 int memcpy (int ,int *,int ) ;

void
DtSetSubtableLength (
    DT_SUBTABLE *Subtable)
{

    if (!Subtable->LengthField)
    {
        return;
    }

    memcpy (Subtable->LengthField, &Subtable->TotalLength,
        Subtable->SizeOfLengthField);
}
