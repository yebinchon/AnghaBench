
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* NextLabel; int Value; } ;
typedef TYPE_1__ DT_FIELD ;


 TYPE_1__* AslGbl_LabelList ;
 int strcmp (char*,int ) ;

__attribute__((used)) static DT_FIELD *
DtLookupLabel (
    char *Name)
{
    DT_FIELD *LabelField;




    if (*Name == '$')
    {
        Name++;
    }



    LabelField = AslGbl_LabelList;
    while (LabelField)
    {
        if (!strcmp (Name, LabelField->Value))
        {
            return (LabelField);
        }

        LabelField = LabelField->NextLabel;
    }

    return (((void*)0));
}
