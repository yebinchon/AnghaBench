
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_7__ {int Integer; int* String; } ;
struct TYPE_8__ {scalar_t__ ParseOpcode; int AmlOpcode; int AmlPkgLenBytes; int CompileFlags; int AmlLength; TYPE_1__ Value; int AmlSubtreeLength; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;




 int AML_FIELD_ACCESS_OP ;
 int AML_FIELD_CONNECTION_OP ;
 int AML_FIELD_OFFSET_OP ;
 int ASL_FILE_STDERR ;
 scalar_t__ AcpiGbl_CaptureComments ;
 int CgLocalWriteAmlData (TYPE_3__*,int*,int) ;
 int CgWriteAmlComment (TYPE_3__*) ;
 int FlPrintFile (int ,char*) ;
 int OP_AML_PACKAGE ;
 scalar_t__ PARSEOP_DEFAULT_ARG ;
 int printf (char*) ;

__attribute__((used)) static void
CgWriteAmlOpcode (
    ACPI_PARSE_OBJECT *Op)
{
    UINT8 PkgLenFirstByte;
    UINT32 i;
    union {
        UINT16 Opcode;
        UINT8 OpcodeBytes[2];
    } Aml;
    union {
        UINT32 Len;
        UINT8 LenBytes[4];
    } PkgLen;




    if (Op->Asl.ParseOpcode == PARSEOP_DEFAULT_ARG)
    {
        return;
    }





    if (AcpiGbl_CaptureComments)
    {
        CgWriteAmlComment(Op);
    }

    switch (Op->Asl.AmlOpcode)
    {
    case 129:



        printf ("Found a node with an unassigned AML opcode\n");
        FlPrintFile (ASL_FILE_STDERR,
            "Found a node with an unassigned AML opcode\n");
        return;

    case 133:



        Aml.Opcode = AML_FIELD_OFFSET_OP;
        break;

    case 135:

        Aml.Opcode = AML_FIELD_ACCESS_OP;
        break;

    case 134:

        Aml.Opcode = AML_FIELD_CONNECTION_OP;
        break;

    default:

        Aml.Opcode = Op->Asl.AmlOpcode;
        break;
    }


    switch (Aml.Opcode)
    {
    case 132:



        PkgLen.Len = (UINT32) Op->Asl.Value.Integer;
        break;

    default:



        if (Aml.Opcode > 0x00FF)
        {


            CgLocalWriteAmlData (Op, &Aml.OpcodeBytes[1], 1);
        }

        CgLocalWriteAmlData (Op, &Aml.OpcodeBytes[0], 1);



        PkgLen.Len = Op->Asl.AmlSubtreeLength + Op->Asl.AmlPkgLenBytes;
        break;
    }



    if (Op->Asl.CompileFlags & OP_AML_PACKAGE)
    {
        if (Op->Asl.AmlPkgLenBytes == 1)
        {


            CgLocalWriteAmlData (Op, &PkgLen.LenBytes[0], 1);
        }
        else if (Op->Asl.AmlPkgLenBytes != 0)
        {




            PkgLenFirstByte = (UINT8)
                (((UINT32) (Op->Asl.AmlPkgLenBytes - 1) << 6) |
                (PkgLen.LenBytes[0] & 0x0F));

            CgLocalWriteAmlData (Op, &PkgLenFirstByte, 1);





            PkgLen.Len >>= 4;





            for (i = 0; i < (UINT32) (Op->Asl.AmlPkgLenBytes - 1); i++)
            {
                CgLocalWriteAmlData (Op, &PkgLen.LenBytes[i], 1);
            }
        }
    }

    switch (Aml.Opcode)
    {
    case 137:

        CgLocalWriteAmlData (Op, &Op->Asl.Value.Integer, 1);
        break;

    case 128:

        CgLocalWriteAmlData (Op, &Op->Asl.Value.Integer, 2);
       break;

    case 136:

        CgLocalWriteAmlData (Op, &Op->Asl.Value.Integer, 4);
        break;

    case 131:

        CgLocalWriteAmlData (Op, &Op->Asl.Value.Integer, 8);
        break;

    case 130:

        CgLocalWriteAmlData (Op, Op->Asl.Value.String, Op->Asl.AmlLength);
        break;

    default:



        break;
    }
}
