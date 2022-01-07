
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_8__ {scalar_t__ Integer; } ;
struct TYPE_9__ {scalar_t__ ParseOpcode; int AmlLength; TYPE_1__ Value; int AmlOpcode; TYPE_3__* Child; TYPE_3__* Next; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AML_PACKAGE_OP ;
 int AML_RAW_DATA_BYTE ;
 int ASL_ERROR ;
 int ASL_MSG_LIST_LENGTH_LONG ;
 int ASL_MSG_LIST_LENGTH_SHORT ;
 int ASL_MSG_PACKAGE_LENGTH ;
 int ASL_REMARK ;
 int AslError (int ,int ,TYPE_3__*,int *) ;
 int OpcSetOptimalIntegerSize (TYPE_3__*) ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 scalar_t__ PARSEOP_INTEGER ;
 scalar_t__ PARSEOP_ONE ;
 scalar_t__ PARSEOP_ONES ;
 scalar_t__ PARSEOP_PACKAGE ;
 scalar_t__ PARSEOP_QWORDCONST ;
 scalar_t__ PARSEOP_RAW_DATA ;
 scalar_t__ PARSEOP_ZERO ;
 int UtSetParseOpName (TYPE_3__*) ;

void
OpnDoPackage (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *InitializerOp;
    ACPI_PARSE_OBJECT *PackageLengthOp;
    UINT32 PackageLength = 0;




    PackageLengthOp = Op->Asl.Child;
    InitializerOp = PackageLengthOp->Asl.Next;



    if (InitializerOp->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
    {


        while (InitializerOp)
        {
            PackageLength++;
            InitializerOp = InitializerOp->Asl.Next;
        }
    }



    if ((PackageLengthOp->Asl.ParseOpcode == PARSEOP_INTEGER) ||
        (PackageLengthOp->Asl.ParseOpcode == PARSEOP_QWORDCONST))
    {
        if (PackageLengthOp->Asl.Value.Integer > PackageLength)
        {






            if (PackageLength > 0)
            {
                AslError (ASL_REMARK, ASL_MSG_LIST_LENGTH_SHORT,
                    PackageLengthOp, ((void*)0));
            }

            PackageLength = (UINT32) PackageLengthOp->Asl.Value.Integer;
        }
        else if (PackageLengthOp->Asl.Value.Integer < PackageLength)
        {




            AslError (ASL_ERROR, ASL_MSG_LIST_LENGTH_LONG,
                PackageLengthOp, ((void*)0));
        }
    }

    if (PackageLengthOp->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
    {




        Op->Asl.Child->Asl.ParseOpcode = PARSEOP_INTEGER;
        Op->Asl.Child->Asl.Value.Integer = PackageLength;
        UtSetParseOpName (Op);



        (void) OpcSetOptimalIntegerSize (Op->Asl.Child);
    }



    if ((PackageLengthOp->Asl.ParseOpcode == PARSEOP_INTEGER) ||
        (PackageLengthOp->Asl.ParseOpcode == PARSEOP_QWORDCONST) ||
        (PackageLengthOp->Asl.ParseOpcode == PARSEOP_ZERO) ||
        (PackageLengthOp->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG))
    {
        if (!PackageLength)
        {


            AslError (ASL_REMARK, ASL_MSG_PACKAGE_LENGTH,
                PackageLengthOp, ((void*)0));


        }
    }





    if (((Op->Asl.Child->Asl.ParseOpcode == PARSEOP_INTEGER) &&
            (Op->Asl.Child->Asl.Value.Integer <= 255)) ||
        (Op->Asl.Child->Asl.ParseOpcode == PARSEOP_ONE) ||
        (Op->Asl.Child->Asl.ParseOpcode == PARSEOP_ONES)||
        (Op->Asl.Child->Asl.ParseOpcode == PARSEOP_ZERO))
    {
        Op->Asl.AmlOpcode = AML_PACKAGE_OP;
        Op->Asl.ParseOpcode = PARSEOP_PACKAGE;





        PackageLengthOp->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
        PackageLengthOp->Asl.AmlLength = 1;
        PackageLengthOp->Asl.ParseOpcode = PARSEOP_RAW_DATA;
        PackageLengthOp->Asl.Value.Integer = PackageLength;
    }


}
