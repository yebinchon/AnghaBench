
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {scalar_t__ Node; scalar_t__ ParseOpcode; int ExternalName; int LogicalLineNumber; TYPE_5__* Parent; } ;
struct TYPE_11__ {TYPE_3__ Asl; } ;
struct TYPE_10__ {int ThisMethodInvocations; TYPE_2__* MethodOp; } ;
struct TYPE_7__ {scalar_t__ Node; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
typedef TYPE_4__ ASL_XREF_INFO ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_FREE (char*) ;
 int AE_CTRL_DEPTH ;
 int AE_OK ;
 int ASL_FILE_XREF_OUTPUT ;
 char* AcpiNsGetNormalizedPathname (scalar_t__,int ) ;
 int FlPrintFile (int ,char*,int ,char*,int ) ;
 scalar_t__ PARSEOP_METHOD ;
 scalar_t__ PARSEOP_METHODCALL ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
OtXrefAnalysisWalkPart2 (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ASL_XREF_INFO *XrefInfo = (ASL_XREF_INFO *) Context;
    ACPI_PARSE_OBJECT *CallerOp;
    char *CallerFullPathname;




    if (!Op->Asl.Node ||
        (Op->Asl.ParseOpcode != PARSEOP_METHODCALL))
    {
        return (AE_OK);
    }



    if (Op->Asl.Node != XrefInfo->MethodOp->Asl.Node)
    {
        return (AE_CTRL_DEPTH);
    }



    CallerOp = Op->Asl.Parent;
    while (CallerOp &&
        (CallerOp->Asl.ParseOpcode != PARSEOP_METHOD))
    {
        CallerOp = CallerOp->Asl.Parent;
    }



    if (!CallerOp)
    {
        return (AE_OK);
    }

    CallerFullPathname = AcpiNsGetNormalizedPathname (
        CallerOp->Asl.Node, TRUE);

    FlPrintFile (ASL_FILE_XREF_OUTPUT,
        "[%5u]     %-40s Invocation path: %s\n",
        Op->Asl.LogicalLineNumber, CallerFullPathname,
        Op->Asl.ExternalName);

    ACPI_FREE (CallerFullPathname);
    XrefInfo->ThisMethodInvocations++;
    return (AE_OK);
}
