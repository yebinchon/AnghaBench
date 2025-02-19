
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_11__ {int * Buffer; int Integer; } ;
struct TYPE_12__ {int AmlOpcodeLength; scalar_t__ AmlOpcode; int CompileFlags; TYPE_1__ Value; int AmlLength; int ParseOpcode; TYPE_5__* Next; TYPE_5__* Child; } ;
struct TYPE_15__ {TYPE_2__ Asl; } ;
struct TYPE_14__ {scalar_t__ CurrentByteOffset; TYPE_5__* DescriptorTypeOp; } ;
struct TYPE_13__ {int BufferLength; } ;
typedef TYPE_3__ ASL_RESOURCE_NODE ;
typedef TYPE_4__ ASL_RESOURCE_INFO ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_RSTATE_NORMAL ;
 scalar_t__ AML_BUFFER_OP ;
 scalar_t__ AML_INT_NAMEPATH_OP ;
 scalar_t__ AML_RAW_DATA_CHAIN ;
 int OP_AML_PACKAGE ;
 int OP_IS_RESOURCE_DESC ;
 int OpcSetOptimalIntegerSize (TYPE_5__*) ;
 int PARSEOP_BUFFER ;
 int PARSEOP_INTEGER ;
 int PARSEOP_RAW_DATA ;
 TYPE_3__* RsDoOneResourceDescriptor (TYPE_4__*,int *) ;
 int UtSetParseOpName (TYPE_5__*) ;

__attribute__((used)) static void
OpcDoConnection (
    ACPI_PARSE_OBJECT *Op)
{
    ASL_RESOURCE_NODE *Rnode;
    ACPI_PARSE_OBJECT *BufferOp;
    ACPI_PARSE_OBJECT *BufferLengthOp;
    ACPI_PARSE_OBJECT *BufferDataOp;
    ASL_RESOURCE_INFO Info;
    UINT8 State;


    Op->Asl.AmlOpcodeLength = 1;

    if (Op->Asl.Child->Asl.AmlOpcode == AML_INT_NAMEPATH_OP)
    {
        return;
    }

    BufferOp = Op->Asl.Child;
    BufferLengthOp = BufferOp->Asl.Child;
    BufferDataOp = BufferLengthOp->Asl.Next;

    Info.DescriptorTypeOp = BufferDataOp->Asl.Next;
    Info.CurrentByteOffset = 0;
    State = ACPI_RSTATE_NORMAL;
    Rnode = RsDoOneResourceDescriptor (&Info, &State);
    if (!Rnode)
    {
        return;
    }
    BufferOp->Asl.ParseOpcode = PARSEOP_BUFFER;
    BufferOp->Asl.AmlOpcode = AML_BUFFER_OP;
    BufferOp->Asl.CompileFlags = OP_AML_PACKAGE | OP_IS_RESOURCE_DESC;
    UtSetParseOpName (BufferOp);

    BufferLengthOp->Asl.ParseOpcode = PARSEOP_INTEGER;
    BufferLengthOp->Asl.Value.Integer = Rnode->BufferLength;
    (void) OpcSetOptimalIntegerSize (BufferLengthOp);
    UtSetParseOpName (BufferLengthOp);

    BufferDataOp->Asl.ParseOpcode = PARSEOP_RAW_DATA;
    BufferDataOp->Asl.AmlOpcode = AML_RAW_DATA_CHAIN;
    BufferDataOp->Asl.AmlOpcodeLength = 0;
    BufferDataOp->Asl.AmlLength = Rnode->BufferLength;
    BufferDataOp->Asl.Value.Buffer = (UINT8 *) Rnode;
    UtSetParseOpName (BufferDataOp);
}
