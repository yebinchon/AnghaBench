
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_7__ {int Integer; } ;
struct TYPE_8__ {scalar_t__ ParseOpcode; int AmlLength; int Extra; int AmlOpcode; TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AML_RAW_DATA_BYTE ;
 int ASL_ERROR ;
 int ASL_MSG_SYNC_LEVEL ;
 int AslError (int ,int ,TYPE_3__*,int *) ;
 int OpcAmlConstantWalk (TYPE_3__*,int ,int *) ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 scalar_t__ PARSEOP_RAW_DATA ;

__attribute__((used)) static void
OpnDoMethod (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;



    UINT8 NumArgs = 0;
    UINT8 Serialized = 0;
    UINT8 Concurrency = 0;
    UINT8 MethodFlags;





    Next = Op->Asl.Child;



    Next = Next->Asl.Next;
    if (Next->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
    {
        NumArgs = (UINT8) Next->Asl.Value.Integer;
        Next->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    }



    Next = Next->Asl.Next;
    if (Next->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
    {
        Serialized = (UINT8) Next->Asl.Value.Integer;
        Next->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    }



    Next = Next->Asl.Next;
    if (Next->Asl.ParseOpcode != PARSEOP_DEFAULT_ARG)
    {


        OpcAmlConstantWalk (Next, 0, ((void*)0));

        if (Next->Asl.Value.Integer > 15)
        {
            AslError (ASL_ERROR, ASL_MSG_SYNC_LEVEL, Next, ((void*)0));
        }

        Concurrency = (UINT8) Next->Asl.Value.Integer;
    }



    MethodFlags = (UINT8)
        ((NumArgs & 0x7) |
        ((Serialized & 0x1) << 3) |
        ((Concurrency & 0xF) << 4));



    Next->Asl.Value.Integer = MethodFlags;
    Next->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
    Next->Asl.AmlLength = 1;
    Next->Asl.ParseOpcode = PARSEOP_RAW_DATA;



    Op->Asl.Extra = NumArgs;
}
