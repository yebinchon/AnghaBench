
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Name; } ;
struct TYPE_4__ {size_t Directive; int Argument; struct TYPE_4__* Next; scalar_t__ IgnoringThisCodeBlock; } ;
typedef TYPE_1__ DIRECTIVE_INFO ;
typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 int ASL_DEBUG_OUTPUT ;
 int AslGbl_CurrentLineNumber ;
 TYPE_3__* AslGbl_DirectiveInfo ;
 TYPE_1__* AslGbl_DirectiveStack ;
 int AslGbl_IfDepth ;
 scalar_t__ AslGbl_IgnoringThisCodeBlock ;
 int DbgPrint (int ,char*,int ,int,char*,int,char*,int ,int ,char*) ;

__attribute__((used)) static ACPI_STATUS
PrPopDirective (
    void)
{
    DIRECTIVE_INFO *Info;




    Info = AslGbl_DirectiveStack;
    if (!Info)
    {
        return (AE_ERROR);
    }



    AslGbl_IfDepth--;
    AslGbl_IgnoringThisCodeBlock = Info->IgnoringThisCodeBlock;
    AslGbl_DirectiveStack = Info->Next;

    DbgPrint (ASL_DEBUG_OUTPUT,
        "Pr(%.4u) - [%u %s] %*s Popped [#%s %s]: IgnoreFlag now = %s\n",
        AslGbl_CurrentLineNumber, AslGbl_IfDepth,
        AslGbl_IgnoringThisCodeBlock ? "I" : "E",
        AslGbl_IfDepth * 4, " ",
        AslGbl_DirectiveInfo[Info->Directive].Name,
        Info->Argument, AslGbl_IgnoringThisCodeBlock ? "TRUE" : "FALSE");

    return (AE_OK);
}
