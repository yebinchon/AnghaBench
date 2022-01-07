
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* UINT64 ;
struct TYPE_3__ {char* TableOffset; } ;
typedef TYPE_1__ DT_FIELD ;


 int ASL_DEBUG_OUTPUT ;
 int ASL_ERROR ;
 int ASL_MSG_UNKNOWN_LABEL ;
 int AslGbl_CurrentField ;
 int DbgPrint (int ,char*,char*) ;
 int DtError (int ,int ,int ,char*) ;
 TYPE_1__* DtLookupLabel (char*) ;

UINT64
DtResolveLabel (
    char *LabelString)
{
    DT_FIELD *LabelField;


    DbgPrint (ASL_DEBUG_OUTPUT, "Resolve Label: %s\n", LabelString);



    if (*LabelString != '$')
    {
        return (0);
    }

    LabelField = DtLookupLabel (LabelString);
    if (!LabelField)
    {
        DtError (ASL_ERROR, ASL_MSG_UNKNOWN_LABEL,
            AslGbl_CurrentField, LabelString);
        return (0);
    }



    DbgPrint (ASL_DEBUG_OUTPUT, "Resolved Label: 0x%8.8X\n",
        LabelField->TableOffset);

    return (LabelField->TableOffset);
}
