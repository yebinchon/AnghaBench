
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_7__ {int Integer; } ;
struct TYPE_8__ {int ParseOpcode; int AmlLength; int ExtraValue; TYPE_3__* Next; TYPE_1__ Value; TYPE_3__* Child; int AmlOpcode; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
 int AML_RAW_DATA_BYTE ;
 int ASL_ERROR ;
 int ASL_MSG_BACKWARDS_OFFSET ;
 int ASL_MSG_OFFSET ;
 int ASL_OPTIMIZATION ;
 int ASL_REMARK ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 int AslGbl_OptimizeTrivialParseNodes ;

 void* PARSEOP_DEFAULT_ARG ;


 int PARSEOP_RAW_DATA ;


__attribute__((used)) static void
OpnDoFieldCommon (
    ACPI_PARSE_OBJECT *FieldOp,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_PARSE_OBJECT *PkgLengthNode;
    UINT32 CurrentBitOffset;
    UINT32 NewBitOffset;
    UINT8 AccessType;
    UINT8 LockRule;
    UINT8 UpdateRule;
    UINT8 FieldFlags;
    UINT32 MinimumLength;




    AccessType = (UINT8) Op->Asl.Value.Integer;
    Op->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;



    FieldOp->Asl.Value.Integer = AccessType;



    Next = Op->Asl.Next;
    LockRule = (UINT8) Next->Asl.Value.Integer;
    Next->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;



    Next = Next->Asl.Next;
    UpdateRule = (UINT8) Next->Asl.Value.Integer;






    FieldFlags = (UINT8) (AccessType | LockRule | UpdateRule);





    Next->Asl.Value.Integer = FieldFlags;
    Next->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
    Next->Asl.AmlLength = 1;
    Next->Asl.ParseOpcode = PARSEOP_RAW_DATA;



    Next = Next->Asl.Next;
    CurrentBitOffset = 0;

    while (Next)
    {


        Next->Asl.ExtraValue = CurrentBitOffset;

        switch (Next->Asl.ParseOpcode)
        {
        case 131:

            PkgLengthNode = Next->Asl.Child;
            AccessType = (UINT8) PkgLengthNode->Asl.Value.Integer;


            break;

        case 129:



            PkgLengthNode = Next->Asl.Child;
            NewBitOffset = ((UINT32) PkgLengthNode->Asl.Value.Integer) * 8;





            if (NewBitOffset < CurrentBitOffset)
            {




                AslError (ASL_ERROR, ASL_MSG_BACKWARDS_OFFSET, PkgLengthNode,
                    ((void*)0));
                Next->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
                PkgLengthNode->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
            }
            else if (NewBitOffset == CurrentBitOffset)
            {





                AslError (ASL_REMARK, ASL_MSG_OFFSET, PkgLengthNode, ((void*)0));

                if (AslGbl_OptimizeTrivialParseNodes)
                {




                    Next->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
                    PkgLengthNode->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;

                    AslError (ASL_OPTIMIZATION, ASL_MSG_OFFSET, PkgLengthNode,
                        "Optimizer has removed statement");
                }
                else
                {


                    PkgLengthNode->Asl.Value.Integer =
                        NewBitOffset - CurrentBitOffset;
                    CurrentBitOffset = NewBitOffset;
                }
            }
            else
            {




                PkgLengthNode->Asl.Value.Integer =
                    NewBitOffset - CurrentBitOffset;
                CurrentBitOffset = NewBitOffset;
            }
            break;

        case 130:
        case 128:



            PkgLengthNode = Next->Asl.Child;
            NewBitOffset = (UINT32) PkgLengthNode->Asl.Value.Integer;
            CurrentBitOffset += NewBitOffset;

            if ((NewBitOffset == 0) &&
                (Next->Asl.ParseOpcode == 128) &&
                AslGbl_OptimizeTrivialParseNodes)
            {






                Next->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
                PkgLengthNode->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
                break;
            }



            switch (AccessType)
            {
                case 137:
                case 135:
                case 136:
                default:

                    MinimumLength = 8;
                    break;

                case 132:
                    MinimumLength = 16;
                    break;

                case 134:
                    MinimumLength = 32;
                    break;

                case 133:
                    MinimumLength = 64;
                    break;
            }

            PkgLengthNode->Asl.ExtraValue = MinimumLength;
            break;

        default:



            break;
        }



        Next = Next->Asl.Next;
    }
}
