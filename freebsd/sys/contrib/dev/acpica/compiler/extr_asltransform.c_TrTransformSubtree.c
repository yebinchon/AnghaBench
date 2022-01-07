
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* String; int Integer; } ;
struct TYPE_11__ {scalar_t__ AmlOpcode; int ParseOpcode; int * ExternalName; TYPE_1__ Value; TYPE_3__* Child; TYPE_3__* Parent; } ;
struct TYPE_12__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ AML_RAW_DATA_BYTE ;
 int ASL_MSG_LEGACY_PROCESSOR_OP ;
 int ASL_MSG_LONG_SLEEP ;
 int ASL_MSG_UNLOAD ;
 int ASL_REMARK ;
 int ASL_WARNING ;
 int AslError (int ,int ,TYPE_3__*,int *) ;
 int AslGbl_TempCount ;
 int ExDoExternal (TYPE_3__*) ;





 int PARSEOP_STRING_LITERAL ;



 int TrDoDefinitionBlock (TYPE_3__*) ;
 int TrDoSwitch (TYPE_3__*) ;
 int UtSetParseOpName (TYPE_3__*) ;

__attribute__((used)) static void
TrTransformSubtree (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *MethodOp;


    if (Op->Asl.AmlOpcode == AML_RAW_DATA_BYTE)
    {
        return;
    }

    switch (Op->Asl.ParseOpcode)
    {
    case 135:

        TrDoDefinitionBlock (Op);
        break;

    case 130:

        TrDoSwitch (Op);
        break;

    case 133:




        AslGbl_TempCount = 0;
        break;

    case 134:

        ExDoExternal (Op);
        break;

    case 128:



        Op->Asl.ParseOpcode = PARSEOP_STRING_LITERAL;
        UtSetParseOpName (Op);



        MethodOp = Op;
        while (MethodOp)
        {
            if (MethodOp->Asl.ParseOpcode == 133)
            {


                MethodOp = MethodOp->Asl.Child;
                Op->Asl.Value.String = MethodOp->Asl.Value.String;
                return;
            }

            MethodOp = MethodOp->Asl.Parent;
        }



        Op->Asl.Value.String = "\\";
        break;

    case 129:

        AslError (ASL_WARNING, ASL_MSG_UNLOAD, Op, ((void*)0));
        break;

    case 131:



        if (Op->Asl.Child->Asl.Value.Integer > 1000)
        {
            AslError (ASL_REMARK, ASL_MSG_LONG_SLEEP, Op, ((void*)0));
        }
        break;

    case 132:

        AslError (ASL_WARNING, ASL_MSG_LEGACY_PROCESSOR_OP, Op, Op->Asl.ExternalName);

        break;

    default:



        break;
    }
}
