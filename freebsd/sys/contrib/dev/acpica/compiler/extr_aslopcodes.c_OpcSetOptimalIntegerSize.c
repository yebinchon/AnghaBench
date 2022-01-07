
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_14__ {int Integer; } ;
struct TYPE_15__ {void* AmlOpcode; TYPE_5__ Value; TYPE_4__* Parent; } ;
struct TYPE_16__ {TYPE_6__ Asl; } ;
struct TYPE_12__ {TYPE_2__* Parent; } ;
struct TYPE_13__ {TYPE_3__ Asl; } ;
struct TYPE_10__ {scalar_t__ ParseOpcode; } ;
struct TYPE_11__ {TYPE_1__ Asl; } ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;


 int ACPI_UINT16_MAX ;


 int ACPI_UINT8_MAX ;
 void* AML_BYTE_OP ;
 void* AML_DWORD_OP ;
 void* AML_ONES_OP ;
 void* AML_ONE_OP ;
 void* AML_QWORD_OP ;
 void* AML_WORD_OP ;
 void* AML_ZERO_OP ;
 int ASL_MSG_INTEGER_LENGTH ;
 int ASL_MSG_INTEGER_OPTIMIZATION ;
 int ASL_OPTIMIZATION ;
 int ASL_WARNING ;
 int AcpiGbl_IntegerByteWidth ;
 int AslError (int ,int ,TYPE_7__*,char*) ;
 int AslGbl_IgnoreErrors ;
 scalar_t__ AslGbl_IntegerOptimizationFlag ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;

UINT32
OpcSetOptimalIntegerSize (
    ACPI_PARSE_OBJECT *Op)
{
    if (AslGbl_IntegerOptimizationFlag)
    {
        switch (Op->Asl.Value.Integer)
        {
        case 0:

            Op->Asl.AmlOpcode = AML_ZERO_OP;
            AslError (ASL_OPTIMIZATION, ASL_MSG_INTEGER_OPTIMIZATION,
                Op, "Zero");
            return (1);

        case 1:

            Op->Asl.AmlOpcode = AML_ONE_OP;
            AslError (ASL_OPTIMIZATION, ASL_MSG_INTEGER_OPTIMIZATION,
                Op, "One");
            return (1);

        case 129:



            if (AcpiGbl_IntegerByteWidth == 4)
            {
                Op->Asl.AmlOpcode = AML_ONES_OP;
                AslError (ASL_OPTIMIZATION, ASL_MSG_INTEGER_OPTIMIZATION,
                    Op, "Ones");
                return (1);
            }
            break;

        case 128:



            if (AcpiGbl_IntegerByteWidth == 8)
            {
                Op->Asl.AmlOpcode = AML_ONES_OP;
                AslError (ASL_OPTIMIZATION, ASL_MSG_INTEGER_OPTIMIZATION,
                    Op, "Ones");
                return (1);
            }
            break;

        default:

            break;
        }
    }



    if (Op->Asl.Value.Integer <= ACPI_UINT8_MAX)
    {
        Op->Asl.AmlOpcode = AML_BYTE_OP;
        return (1);
    }

    if (Op->Asl.Value.Integer <= ACPI_UINT16_MAX)
    {
        Op->Asl.AmlOpcode = AML_WORD_OP;
        return (2);
    }

    if (Op->Asl.Value.Integer <= 129)
    {
        Op->Asl.AmlOpcode = AML_DWORD_OP;
        return (4);
    }
    else
    {
        if (AcpiGbl_IntegerByteWidth == 4)
        {
            AslError (ASL_WARNING, ASL_MSG_INTEGER_LENGTH,
                Op, ((void*)0));

            if (!AslGbl_IgnoreErrors)
            {


                Op->Asl.Value.Integer &= 129;



                return (OpcSetOptimalIntegerSize (Op));
            }
        }

        Op->Asl.AmlOpcode = AML_QWORD_OP;
        return (8);
    }
}
