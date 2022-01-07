
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ ParseOpcode; int ExternalName; int Node; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
struct TYPE_6__ {TYPE_3__* CurrentOp; } ;
typedef TYPE_2__ ASL_METHOD_INFO ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AE_ALREADY_EXISTS ;
 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ PARSEOP_METHODCALL ;
 scalar_t__ PARSEOP_NAMESEG ;
 scalar_t__ PARSEOP_NAMESTRING ;
 int strcmp (int ,int ) ;

__attribute__((used)) static ACPI_STATUS
OtXrefAnalysisWalkPart1 (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ASL_METHOD_INFO *MethodInfo = (ASL_METHOD_INFO *) Context;
    ACPI_PARSE_OBJECT *Next;




    if ((Op->Asl.ParseOpcode != PARSEOP_NAMESEG) &&
        (Op->Asl.ParseOpcode != PARSEOP_NAMESTRING) &&
        (Op->Asl.ParseOpcode != PARSEOP_METHODCALL))
    {
        return (AE_OK);
    }



    if (!Op->Asl.Node)
    {
        return (AE_OK);
    }



    Next = MethodInfo->CurrentOp;
    if (Next == Op)
    {
        return (AE_CTRL_TERMINATE);
    }



    if ((Next->Asl.ParseOpcode == PARSEOP_NAMESEG) ||
        (Next->Asl.ParseOpcode == PARSEOP_NAMESTRING) ||
        (Next->Asl.ParseOpcode == PARSEOP_METHODCALL))
    {
        if (!strcmp (Op->Asl.ExternalName, Next->Asl.ExternalName))
        {
            return (AE_ALREADY_EXISTS);
        }
    }

    return (AE_OK);
}
