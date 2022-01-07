
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {int Integer; int * Buffer; scalar_t__ String; } ;
struct TYPE_8__ {int AmlLength; TYPE_3__* Child; int ParseOpcode; int AmlOpcode; TYPE_1__ Value; TYPE_3__* Next; int CompileFlags; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AML_DWORD_OP ;
 int AML_RAW_DATA_BUFFER ;
 int OP_COMPILE_TIME_CONST ;
 int OpcSetOptimalIntegerSize (TYPE_3__*) ;
 int PARSEOP_BUFFER ;
 int PARSEOP_INTEGER ;
 int PARSEOP_RAW_DATA ;
 scalar_t__* UtLocalCalloc (int) ;
 int UtSetParseOpName (TYPE_3__*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void
OpcDoUnicode (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *InitializerOp;
    UINT32 Length;
    UINT32 Count;
    UINT32 i;
    UINT8 *AsciiString;
    UINT16 *UnicodeString;
    ACPI_PARSE_OBJECT *BufferLengthOp;




    Op->Asl.CompileFlags &= ~OP_COMPILE_TIME_CONST;
    Op->Asl.ParseOpcode = PARSEOP_BUFFER;
    UtSetParseOpName (Op);



    BufferLengthOp = Op->Asl.Child;
    InitializerOp = BufferLengthOp->Asl.Next;

    AsciiString = (UINT8 *) InitializerOp->Asl.Value.String;



    Count = strlen (InitializerOp->Asl.Value.String) + 1;
    Length = Count * sizeof (UINT16);
    UnicodeString = UtLocalCalloc (Length);



    for (i = 0; i < Count; i++)
    {
        UnicodeString[i] = (UINT16) AsciiString[i];
    }





    BufferLengthOp->Asl.ParseOpcode = PARSEOP_INTEGER;
    BufferLengthOp->Asl.AmlOpcode = AML_DWORD_OP;
    BufferLengthOp->Asl.Value.Integer = Length;
    UtSetParseOpName (BufferLengthOp);

    (void) OpcSetOptimalIntegerSize (BufferLengthOp);



    InitializerOp->Asl.Value.Buffer = (UINT8 *) UnicodeString;
    InitializerOp->Asl.AmlOpcode = AML_RAW_DATA_BUFFER;
    InitializerOp->Asl.AmlLength = Length;
    InitializerOp->Asl.ParseOpcode = PARSEOP_RAW_DATA;
    InitializerOp->Asl.Child = ((void*)0);
    UtSetParseOpName (InitializerOp);
}
