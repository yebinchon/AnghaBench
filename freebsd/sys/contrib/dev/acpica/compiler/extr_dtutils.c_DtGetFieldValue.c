
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Value; } ;
typedef TYPE_1__ DT_FIELD ;



char *
DtGetFieldValue (
    DT_FIELD *Field)
{
    if (!Field)
    {
        return (((void*)0));
    }

    return (Field->Value);
}
