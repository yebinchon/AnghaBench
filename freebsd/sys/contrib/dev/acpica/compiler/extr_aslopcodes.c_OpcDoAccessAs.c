
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_5__ {int Integer; } ;
struct TYPE_6__ {int AmlOpcodeLength; scalar_t__ ParseOpcode; void* AmlOpcode; TYPE_1__ Value; TYPE_3__* Child; TYPE_3__* Next; } ;
struct TYPE_7__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ AML_FIELD_ATTRIB_BYTES ;
 scalar_t__ AML_FIELD_ATTRIB_RAW_BYTES ;
 scalar_t__ AML_FIELD_ATTRIB_RAW_PROCESS_BYTES ;
 void* AML_FIELD_EXT_ACCESS_OP ;
 void* AML_RAW_DATA_BYTE ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 void* PARSEOP_RAW_DATA ;

__attribute__((used)) static void
OpcDoAccessAs (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *TypeOp;
    ACPI_PARSE_OBJECT *AttribOp;
    ACPI_PARSE_OBJECT *LengthOp;
    UINT8 Attribute;


    Op->Asl.AmlOpcodeLength = 1;
    TypeOp = Op->Asl.Child;



    TypeOp->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
    TypeOp->Asl.ParseOpcode = PARSEOP_RAW_DATA;



    AttribOp = TypeOp->Asl.Next;
    if (AttribOp->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
    {
        AttribOp->Asl.Value.Integer = 0;
    }

    AttribOp->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
    AttribOp->Asl.ParseOpcode = PARSEOP_RAW_DATA;



    Attribute = (UINT8) AttribOp->Asl.Value.Integer;
    if ((Attribute != AML_FIELD_ATTRIB_BYTES) &&
        (Attribute != AML_FIELD_ATTRIB_RAW_BYTES) &&
        (Attribute != AML_FIELD_ATTRIB_RAW_PROCESS_BYTES))
    {
        return;
    }

    Op->Asl.AmlOpcode = AML_FIELD_EXT_ACCESS_OP;





    LengthOp = AttribOp->Asl.Child;
    if (!LengthOp)
    {
        return;
    }



    if (LengthOp->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
    {
        LengthOp->Asl.Value.Integer = 16;
    }

    LengthOp->Asl.AmlOpcode = AML_RAW_DATA_BYTE;
    LengthOp->Asl.ParseOpcode = PARSEOP_RAW_DATA;
}
