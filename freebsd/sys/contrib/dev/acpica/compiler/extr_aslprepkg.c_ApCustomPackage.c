
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_13__ {scalar_t__ Integer; } ;
struct TYPE_14__ {scalar_t__ ParseOpcode; TYPE_1__ Value; TYPE_5__* Next; TYPE_5__* Child; } ;
struct TYPE_17__ {TYPE_2__ Asl; } ;
struct TYPE_15__ {int Name; } ;
struct TYPE_16__ {TYPE_3__ Info; } ;
typedef TYPE_4__ ACPI_PREDEFINED_INFO ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_RTYPE_INTEGER ;
 int ACPI_RTYPE_STRING ;
 int ASL_ERROR ;
 int ASL_MSG_RESERVED_OPERAND_TYPE ;
 TYPE_5__* ApCheckPackageElements (int ,TYPE_5__*,int ,int,int ,int) ;
 int ApPackageTooLarge (int ,TYPE_5__*,scalar_t__,scalar_t__) ;
 int ApPackageTooSmall (int ,TYPE_5__*,scalar_t__,scalar_t__) ;
 int AslError (int ,int ,TYPE_5__*,int ) ;
 int AslGbl_MsgBuffer ;
 scalar_t__ PARSEOP_INTEGER ;

__attribute__((used)) static void
ApCustomPackage (
    ACPI_PARSE_OBJECT *ParentOp,
    const ACPI_PREDEFINED_INFO *Predefined)
{
    ACPI_PARSE_OBJECT *Op;
    UINT32 Count;
    UINT32 ExpectedCount;
    UINT32 Version;




    Op = ParentOp->Asl.Child;
    Count = (UINT32) Op->Asl.Value.Integer;



    Op = Op->Asl.Next;
    Version = (UINT32) Op->Asl.Value.Integer;
    if (Op->Asl.ParseOpcode != PARSEOP_INTEGER)
    {
        AslError (ASL_ERROR, ASL_MSG_RESERVED_OPERAND_TYPE, Op, AslGbl_MsgBuffer);
        return;
    }



    ExpectedCount = 21;
    if (Version == 0)
    {
        ExpectedCount = 20;
    }

    if (Count < ExpectedCount)
    {
        ApPackageTooSmall (Predefined->Info.Name, ParentOp,
            Count, ExpectedCount);
        return;
    }
    else if (Count > ExpectedCount)
    {
        ApPackageTooLarge (Predefined->Info.Name, ParentOp,
            Count, ExpectedCount);
    }



    Op = ApCheckPackageElements (Predefined->Info.Name, Op,
        ACPI_RTYPE_INTEGER, 16,
        ACPI_RTYPE_STRING, 4);



    if (Version > 0)
    {
        ApCheckPackageElements (Predefined->Info.Name, Op,
            ACPI_RTYPE_INTEGER, 1, 0, 0);
    }
}
