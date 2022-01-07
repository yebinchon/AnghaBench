
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_10__ {scalar_t__ Integer; int String; } ;
struct TYPE_11__ {scalar_t__ ParseOpcode; int AmlLength; TYPE_1__ Value; int AmlOpcode; TYPE_3__* Next; TYPE_3__* Child; } ;
struct TYPE_12__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AML_DWORD_OP ;
 int AML_RAW_DATA_BUFFER ;
 int AML_RAW_DATA_BYTE ;
 int ASL_ERROR ;
 TYPE_3__* ASL_GET_PEER_NODE (TYPE_3__*) ;
 int ASL_MSG_BUFFER_LENGTH ;
 int ASL_MSG_INVALID_OPERAND ;
 int ASL_REMARK ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 int OpcSetOptimalIntegerSize (TYPE_3__*) ;







 char* UtGetOpName (int) ;
 int UtSetParseOpName (TYPE_3__*) ;
 int printf (char*,char*) ;
 int strlen (int ) ;

__attribute__((used)) static void
OpnDoBuffer (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *InitializerOp;
    ACPI_PARSE_OBJECT *BufferLengthOp;



    UINT32 BufferLength = 0;





    BufferLengthOp = Op->Asl.Child;
    InitializerOp = BufferLengthOp->Asl.Next;






    if ((BufferLengthOp->Asl.ParseOpcode != 131) &&
        (BufferLengthOp->Asl.ParseOpcode != 133))
    {
        return;
    }






    switch (InitializerOp->Asl.ParseOpcode)
    {
    case 131:
    case 134:
    case 128:
    case 132:



        while (InitializerOp)
        {


            InitializerOp->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
            InitializerOp->Asl.AmlLength = 1;
            InitializerOp->Asl.ParseOpcode = 130;

            BufferLength++;
            InitializerOp = ASL_GET_PEER_NODE (InitializerOp);
        }
        break;

    case 129:





        BufferLength = strlen (InitializerOp->Asl.Value.String) + 1;

        InitializerOp->Asl.AmlOpcode = AML_RAW_DATA_BUFFER;
        InitializerOp->Asl.AmlLength = BufferLength;
        InitializerOp->Asl.ParseOpcode = 130;
        break;

    case 130:


        return;

    case 133:
        break;

    default:

        AslError (ASL_ERROR, ASL_MSG_INVALID_OPERAND, InitializerOp,
            "Unknown buffer initializer opcode");
        printf ("Unknown buffer initializer opcode [%s]\n",
            UtGetOpName (InitializerOp->Asl.ParseOpcode));
        return;
    }



    if (BufferLengthOp->Asl.Value.Integer > BufferLength)
    {
        BufferLength = (UINT32) BufferLengthOp->Asl.Value.Integer;
    }

    if (!BufferLength)
    {


        AslError (ASL_REMARK, ASL_MSG_BUFFER_LENGTH, BufferLengthOp, ((void*)0));


    }





    BufferLengthOp->Asl.ParseOpcode = 131;
    BufferLengthOp->Asl.AmlOpcode = AML_DWORD_OP;
    BufferLengthOp->Asl.Value.Integer = BufferLength;

    (void) OpcSetOptimalIntegerSize (BufferLengthOp);
    UtSetParseOpName (BufferLengthOp);


}
