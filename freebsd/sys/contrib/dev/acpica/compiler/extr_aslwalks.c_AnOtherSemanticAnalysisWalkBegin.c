
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_16__ {TYPE_3__* Op; } ;
struct TYPE_15__ {int Flags; scalar_t__ Class; } ;
struct TYPE_12__ {int Integer; } ;
struct TYPE_13__ {scalar_t__ AmlOpcode; scalar_t__ ParseOpcode; TYPE_3__* Next; TYPE_3__* Child; TYPE_1__ Value; TYPE_5__* Node; TYPE_3__* Parent; int * ExternalName; } ;
struct TYPE_14__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int ACPI_ADR_SPACE_GPIO ;
 int ACPI_ADR_SPACE_GSBUS ;
 int ACPI_WAIT_FOREVER ;
 int AE_OK ;
 scalar_t__ AML_CLASS_EXECUTE ;
 int AML_CREATE ;
 scalar_t__ AML_DIVIDE_OP ;
 int AML_HAS_RETVAL ;
 int AML_HAS_TARGET ;
 int ASL_ERROR ;
 int ASL_MSG_CONNECTION_INVALID ;
 int ASL_MSG_CONNECTION_MISSING ;
 int ASL_MSG_RESULT_NOT_USED ;
 int ASL_MSG_TIMEOUT ;
 int ASL_WARNING ;
 TYPE_4__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int AnAnalyzeStoreOperator (TYPE_3__*) ;
 int AnIsResultUsed (TYPE_3__*) ;
 int AnValidateCreateBufferField (TYPE_3__*) ;
 int AslError (int ,int ,TYPE_3__*,int *) ;
 int AslGbl_DoTypechecking ;



 int PARSEOP_INTEGER ;

 int const PARSEOP_NAMESEG ;


 int PARSEOP_WORDCONST ;
 scalar_t__ PARSEOP_ZERO ;

ACPI_STATUS
AnOtherSemanticAnalysisWalkBegin (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_PARSE_OBJECT *ArgOp;
    ACPI_PARSE_OBJECT *PrevArgOp = ((void*)0);
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_NAMESPACE_NODE *Node;


    OpInfo = AcpiPsGetOpcodeInfo (Op->Asl.AmlOpcode);


    if (OpInfo->Flags & AML_CREATE)
    {


        AnValidateCreateBufferField (Op);
        return (AE_OK);
    }






    if ((OpInfo->Class == AML_CLASS_EXECUTE) &&
        (OpInfo->Flags & AML_HAS_RETVAL) &&
        (!AnIsResultUsed (Op)))
    {
        if (OpInfo->Flags & AML_HAS_TARGET)
        {





            ArgOp = Op->Asl.Child;
            while (ArgOp->Asl.Next)
            {
                PrevArgOp = ArgOp;
                ArgOp = ArgOp->Asl.Next;
            }



            if (Op->Asl.AmlOpcode == AML_DIVIDE_OP)
            {
                if ((ArgOp->Asl.ParseOpcode == PARSEOP_ZERO) &&
                    (PrevArgOp) &&
                    (PrevArgOp->Asl.ParseOpcode == PARSEOP_ZERO))
                {
                    AslError (ASL_ERROR, ASL_MSG_RESULT_NOT_USED,
                        Op, Op->Asl.ExternalName);
                }
            }

            else if (ArgOp->Asl.ParseOpcode == PARSEOP_ZERO)
            {
                AslError (ASL_ERROR, ASL_MSG_RESULT_NOT_USED,
                    Op, Op->Asl.ExternalName);
            }
        }
        else
        {




            switch (Op->Asl.ParseOpcode)
            {
            case 133:
            case 128:
            case 130:

                break;

            default:

                AslError (ASL_ERROR, ASL_MSG_RESULT_NOT_USED,
                    Op, Op->Asl.ExternalName);
                break;
            }
        }
    }





    switch (Op->Asl.ParseOpcode)
    {
    case 129:

        if (AslGbl_DoTypechecking)
        {
            AnAnalyzeStoreOperator (Op);
        }
        break;


    case 133:
    case 128:
        ArgOp = Op->Asl.Child;
        ArgOp = ArgOp->Asl.Next;





        if (((ArgOp->Asl.ParseOpcode == PARSEOP_WORDCONST) ||
             (ArgOp->Asl.ParseOpcode == PARSEOP_INTEGER)) &&
             (ArgOp->Asl.Value.Integer >= (UINT64) ACPI_WAIT_FOREVER))
        {
            break;
        }





        if (!AnIsResultUsed (Op))
        {
            AslError (ASL_WARNING, ASL_MSG_TIMEOUT, ArgOp,
                Op->Asl.ExternalName);
        }
        break;

    case 132:




        ArgOp = Op->Asl.Parent;
        ArgOp = ArgOp->Asl.Child;
        Node = ArgOp->Asl.Node;
        if (!Node)
        {
            break;
        }

        ArgOp = Node->Op;
        ArgOp = ArgOp->Asl.Child;
        ArgOp = ArgOp->Asl.Next;





        if ((ArgOp->Asl.Value.Integer != ACPI_ADR_SPACE_GPIO) &&
            (ArgOp->Asl.Value.Integer != ACPI_ADR_SPACE_GSBUS))
        {
            AslError (ASL_ERROR, ASL_MSG_CONNECTION_INVALID, Op, ((void*)0));
        }
        break;

    case 131:




        ArgOp = Op->Asl.Child;
        Node = ArgOp->Asl.Node;
        if (!Node)
        {
            break;
        }

        ArgOp = Node->Op;
        ArgOp = ArgOp->Asl.Child;
        ArgOp = ArgOp->Asl.Next;



        if ((ArgOp->Asl.Value.Integer != ACPI_ADR_SPACE_GPIO) &&
            (ArgOp->Asl.Value.Integer != ACPI_ADR_SPACE_GSBUS))
        {
            break;
        }

        ArgOp = Op->Asl.Child;
        ArgOp = ArgOp->Asl.Next;
        ArgOp = ArgOp->Asl.Next;
        ArgOp = ArgOp->Asl.Next;
        ArgOp = ArgOp->Asl.Next;



        while (ArgOp)
        {
            if (ArgOp->Asl.ParseOpcode == 132)
            {
                break;
            }
            else if (ArgOp->Asl.ParseOpcode == PARSEOP_NAMESEG)
            {
                AslError (ASL_ERROR, ASL_MSG_CONNECTION_MISSING, ArgOp, ((void*)0));
                break;
            }

            ArgOp = ArgOp->Asl.Next;
        }
        break;

    default:

        break;
    }

    return (AE_OK);
}
