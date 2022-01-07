
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Next; int Identifier; } ;
typedef TYPE_1__ PR_DEFINE_INFO ;


 TYPE_1__* AslGbl_DefineList ;
 int strcmp (char*,int ) ;

PR_DEFINE_INFO *
PrMatchDefine (
    char *MatchString)
{
    PR_DEFINE_INFO *DefineInfo;


    DefineInfo = AslGbl_DefineList;
    while (DefineInfo)
    {
        if (!strcmp (MatchString, DefineInfo->Identifier))
        {
            return (DefineInfo);
        }

        DefineInfo = DefineInfo->Next;
    }

    return (((void*)0));
}
