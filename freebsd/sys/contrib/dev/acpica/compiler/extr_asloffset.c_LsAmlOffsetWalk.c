
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_10__ {scalar_t__ Type; } ;
struct TYPE_7__ {int Integer; } ;
struct TYPE_8__ {int CompileFlags; int AmlOpcode; scalar_t__ FinalAmlLength; int ParseOpName; TYPE_3__* Child; TYPE_1__ Value; TYPE_3__* Next; int Extra; TYPE_4__* Node; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_NAMESEG_SIZE ;
 int ACPI_TO_INTEGER (void*) ;
 scalar_t__ ACPI_TYPE_LOCAL_RESOURCE ;
 int AE_OK ;
 int const AML_BUFFER_OP ;
 scalar_t__ AslGbl_CurrentAmlOffset ;
 int AslGbl_MsgBuffer ;
 int FlPrintFile (scalar_t__,char*,int ) ;
 int LsEmitOffsetTableEntry (scalar_t__,TYPE_4__*,scalar_t__,scalar_t__,int ,int ,int ,int const) ;
 int OP_IS_RESOURCE_DATA ;
 int OP_IS_RESOURCE_DESC ;

ACPI_STATUS
LsAmlOffsetWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    UINT32 FileId = (UINT32) ACPI_TO_INTEGER (Context);
    ACPI_NAMESPACE_NODE *Node;
    UINT32 Length;
    UINT32 NamepathOffset;
    UINT32 DataOffset;
    ACPI_PARSE_OBJECT *NextOp;




    if (Op->Asl.CompileFlags & OP_IS_RESOURCE_DATA)
    {
        return (AE_OK);
    }



    Node = Op->Asl.Node;
    if (!Node)
    {
        AslGbl_CurrentAmlOffset += Op->Asl.FinalAmlLength;
        return (AE_OK);
    }



    if ((Node->Type == ACPI_TYPE_LOCAL_RESOURCE) &&
        (Op->Asl.CompileFlags & OP_IS_RESOURCE_DESC))
    {
        LsEmitOffsetTableEntry (FileId, Node, 0, AslGbl_CurrentAmlOffset,
            Op->Asl.ParseOpName, 0, Op->Asl.Extra, AML_BUFFER_OP);

        AslGbl_CurrentAmlOffset += Op->Asl.FinalAmlLength;
        return (AE_OK);
    }

    switch (Op->Asl.AmlOpcode)
    {
    case 139:



        if (!Op->Asl.Child)
        {
            FlPrintFile (FileId, "%s NO CHILD!\n", AslGbl_MsgBuffer);
            return (AE_OK);
        }

        Length = Op->Asl.FinalAmlLength;



        Op = Op->Asl.Child;



        NamepathOffset = AslGbl_CurrentAmlOffset + Length +
            (Op->Asl.FinalAmlLength - ACPI_NAMESEG_SIZE);

        DataOffset = AslGbl_CurrentAmlOffset + Length +
            Op->Asl.FinalAmlLength;



        Op = Op->Asl.Next;
        switch (Op->Asl.AmlOpcode)
        {
        case 143:
        case 129:
        case 141:
        case 134:



            LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, (DataOffset + 1),
                Op->Asl.ParseOpName, Op->Asl.Value.Integer,
                (UINT8) Op->Asl.AmlOpcode, 139);
            break;

        case 137:
        case 138:
        case 128:



            LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, DataOffset,
                Op->Asl.ParseOpName, Op->Asl.Value.Integer,
                (UINT8) Op->Asl.AmlOpcode, 139);
            break;

        case 136:
        case 130:



            NextOp = Op->Asl.Child;

            LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, DataOffset,
                Op->Asl.ParseOpName, NextOp->Asl.Value.Integer,
                (UINT8) Op->Asl.AmlOpcode, 139);
            break;

         default:
             break;
        }

        AslGbl_CurrentAmlOffset += Length;
        return (AE_OK);

    case 133:



        Length = Op->Asl.FinalAmlLength;



        NextOp = Op->Asl.Child;



        NamepathOffset = AslGbl_CurrentAmlOffset + Length +
            (NextOp->Asl.FinalAmlLength - ACPI_NAMESEG_SIZE);

        DataOffset = AslGbl_CurrentAmlOffset + Length +
            (NextOp->Asl.FinalAmlLength + 1);



        NextOp = NextOp->Asl.Next;
        NextOp = NextOp->Asl.Next;

        switch (NextOp->Asl.AmlOpcode)
        {





        case 143:
        case 129:
        case 141:
        case 134:

            LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, (DataOffset + 1),
                Op->Asl.ParseOpName, NextOp->Asl.Value.Integer,
                (UINT8) NextOp->Asl.AmlOpcode, 133);

            AslGbl_CurrentAmlOffset += Length;
            return (AE_OK);

        default:
            break;
        }
        break;

    case 140:



        Length = Op->Asl.FinalAmlLength;



        NextOp = Op->Asl.Child;



        NamepathOffset = AslGbl_CurrentAmlOffset + Length +
            (NextOp->Asl.FinalAmlLength - ACPI_NAMESEG_SIZE);

        DataOffset = AslGbl_CurrentAmlOffset + Length +
            NextOp->Asl.FinalAmlLength;



        NextOp = NextOp->Asl.Next;

        LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, DataOffset,
            Op->Asl.ParseOpName, NextOp->Asl.Value.Integer,
            (UINT8) Op->Asl.AmlOpcode, 140);
        break;

    case 135:



        Length = Op->Asl.FinalAmlLength;
        NextOp = Op->Asl.Child;



        NamepathOffset = AslGbl_CurrentAmlOffset + Length +
            (NextOp->Asl.FinalAmlLength - ACPI_NAMESEG_SIZE);

        DataOffset = AslGbl_CurrentAmlOffset + Length +
            (NextOp->Asl.FinalAmlLength + 1);

        NextOp = NextOp->Asl.Next;
        NextOp = NextOp->Asl.Next;

        LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, DataOffset,
            Op->Asl.ParseOpName, NextOp->Asl.Value.Integer,
            (UINT8) 141, 135);
        break;

    case 142:
    case 132:
    case 131:



        Length = Op->Asl.FinalAmlLength;
        NextOp = Op->Asl.Child;



        NamepathOffset = AslGbl_CurrentAmlOffset + Length +
            (NextOp->Asl.FinalAmlLength - ACPI_NAMESEG_SIZE);

        LsEmitOffsetTableEntry (FileId, Node, NamepathOffset, 0,
            Op->Asl.ParseOpName, 0, (UINT8) 0, Op->Asl.AmlOpcode);
        break;

    default:
        break;
    }

    AslGbl_CurrentAmlOffset += Op->Asl.FinalAmlLength;
    return (AE_OK);
}
