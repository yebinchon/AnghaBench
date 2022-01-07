
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_8__ {int Opcode; } ;
struct TYPE_7__ {int Value; } ;
typedef TYPE_1__ DT_FIELD ;
typedef TYPE_2__ ACPI_DMTABLE_INFO ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int ASL_MSG_FLAG_VALUE ;
 int AcpiUtImplicitStrtoul64 (int ) ;
 int AslGbl_MsgBuffer ;
 int DtError (int ,int ,TYPE_1__*,int ) ;
 int DtFatal (int ,TYPE_1__*,char*) ;
 int sprintf (int ,char*,int) ;

void
DtCompileFlag (
    UINT8 *Buffer,
    DT_FIELD *Field,
    ACPI_DMTABLE_INFO *Info)
{
    UINT64 Value = 0;
    UINT32 BitLength = 1;
    UINT8 BitPosition = 0;


    Value = AcpiUtImplicitStrtoul64 (Field->Value);

    switch (Info->Opcode)
    {
    case 144:
    case 143:
    case 142:
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:

        BitPosition = Info->Opcode;
        BitLength = 1;
        break;

    case 136:

        BitPosition = 0;
        BitLength = 2;
        break;


    case 135:

        BitPosition = 1;
        BitLength = 2;
        break;


    case 133:

        BitPosition = 2;
        BitLength = 2;
        break;

    case 132:

        BitPosition = 4;
        BitLength = 2;
        break;

    case 131:

        BitPosition = 0;
        BitLength = 4;
        break;

    case 129:

        BitPosition = 4;
        BitLength = 4;
        break;

    case 128:

        BitPosition = 8;
        BitLength = 4;
        break;

    case 130:

        BitPosition = 12;
        BitLength = 4;
        break;

    case 134:

        BitPosition = 16;
        BitLength = 16;
        break;

    default:

        DtFatal (ASL_MSG_COMPILER_INTERNAL, Field, "Invalid flag opcode");
        break;
    }



    if (Value >= ((UINT64) 1 << BitLength))
    {
        sprintf (AslGbl_MsgBuffer, "Maximum %u bit", BitLength);
        DtError (ASL_ERROR, ASL_MSG_FLAG_VALUE, Field, AslGbl_MsgBuffer);
        Value = 0;
    }

    *Buffer |= (UINT8) (Value << BitPosition);
}
