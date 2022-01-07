
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {int Flags; scalar_t__ Type; } ;
struct TYPE_7__ {int ParseOpcode; scalar_t__ AmlOpcode; TYPE_3__* Node; TYPE_2__* Next; TYPE_2__* Child; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 int ACPI_BTYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ AML_ARG6 ;
 scalar_t__ AML_DEBUG_OP ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_LOCAL0 ;
 int ANOBJ_IS_EXTERNAL ;
 int ASL_ERROR ;
 int ASL_MSG_DUPLICATE_ITEM ;
 int ASL_MSG_INVALID_TYPE ;
 int ASL_WARNING ;
 int AnGetBtype (TYPE_2__*) ;
 int AslError (int ,int ,TYPE_2__*,char*) ;
 int AslGbl_EnableReferenceTypechecking ;
__attribute__((used)) static void
AnAnalyzeStoreOperator (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_NAMESPACE_NODE *SourceNode;
    ACPI_NAMESPACE_NODE *TargetNode;
    ACPI_PARSE_OBJECT *SourceOperandOp;
    ACPI_PARSE_OBJECT *TargetOperandOp;
    UINT32 SourceOperandBtype;
    UINT32 TargetOperandBtype;




    SourceOperandOp = Op->Asl.Child;
    TargetOperandOp = SourceOperandOp->Asl.Next;





    switch (SourceOperandOp->Asl.ParseOpcode)
    {


    case 132:
    case 130:
    case 128:
    case 134:

        return;

    case 131:
    case 129:

        if (!AslGbl_EnableReferenceTypechecking)
        {
            return;
        }





        if (TargetOperandOp->Asl.AmlOpcode == AML_DEBUG_OP)
        {
            return;
        }

        if ((TargetOperandOp->Asl.AmlOpcode < AML_LOCAL0) ||
            (TargetOperandOp->Asl.AmlOpcode > AML_ARG6))
        {
            AslError (ASL_ERROR, ASL_MSG_INVALID_TYPE, TargetOperandOp,
                "Source [Reference], Target must be [Local/Arg/Debug]");
        }
        return;

    default:
        break;
    }




    switch (TargetOperandOp->Asl.ParseOpcode)
    {
    case 133:
    case 132:
    case 129:
    case 131:
    case 128:

        return;

    default:
        break;
    }





    SourceNode = SourceOperandOp->Asl.Node;
    if (SourceNode &&
        (SourceNode->Flags & ANOBJ_IS_EXTERNAL) &&
        (SourceNode->Type == ACPI_TYPE_ANY))
    {
        return;
    }

    TargetNode = TargetOperandOp->Asl.Node;
    if (TargetNode &&
        (TargetNode->Flags & ANOBJ_IS_EXTERNAL) &&
        (TargetNode->Type == ACPI_TYPE_ANY))
    {
        return;
    }





    if ((!SourceNode && (SourceOperandOp->Asl.AmlOpcode == AML_INT_NAMEPATH_OP)) ||
        (!TargetNode && (TargetOperandOp->Asl.AmlOpcode == AML_INT_NAMEPATH_OP)))
    {
        return;
    }





    if (SourceNode && TargetNode)
    {
        if (SourceNode == TargetNode)
        {
            AslError (ASL_WARNING, ASL_MSG_DUPLICATE_ITEM,
                TargetOperandOp, "Source is the same as Target");
            return;
        }
    }



    if ((SourceOperandOp->Asl.AmlOpcode >= AML_LOCAL0) &&
        (SourceOperandOp->Asl.AmlOpcode <= AML_ARG6))
    {
        return;
    }

    if ((TargetOperandOp->Asl.AmlOpcode >= AML_LOCAL0) &&
        (TargetOperandOp->Asl.AmlOpcode <= AML_ARG6))
    {
        return;
    }
    SourceOperandBtype = AnGetBtype (SourceOperandOp);
    TargetOperandBtype = AnGetBtype (TargetOperandOp);



    if (SourceOperandBtype & ACPI_BTYPE_PACKAGE)
    {


        if (!(TargetOperandBtype & ACPI_BTYPE_PACKAGE))
        {
            AslError (ASL_ERROR, ASL_MSG_INVALID_TYPE, TargetOperandOp,
                "Source is [Package], Target must be a package also");
        }
    }



    else if (TargetOperandBtype & ACPI_BTYPE_PACKAGE)
    {


        if (!(SourceOperandBtype & ACPI_BTYPE_PACKAGE))
        {
            AslError (ASL_ERROR, ASL_MSG_INVALID_TYPE, SourceOperandOp,
                "Target is [Package], Source must be a package also");
        }
    }
}
