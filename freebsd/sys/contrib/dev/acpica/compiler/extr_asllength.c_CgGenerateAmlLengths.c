
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {char* String; int Integer; } ;
struct TYPE_9__ {int AmlOpcode; int AmlOpcodeLength; int AmlLength; int ParseOpcode; char* ExternalName; int CompileFlags; TYPE_1__ Value; int AmlPkgLenBytes; int AmlSubtreeLength; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_FAILURE (int ) ;






 int ASL_DEBUG_OUTPUT ;
 int AslGbl_TableLength ;
 int CgGenerateAmlOpcodeLength (TYPE_3__*) ;
 int CgGetPackageLenByteCount (TYPE_3__*,int ) ;
 int DbgPrint (int ,char*,int ) ;
 int OP_NAME_INTERNALIZED ;
 int UtInternalizeName (char*,char**) ;
 int UtNameContainsAllPrefix (TYPE_3__*) ;
 int strlen (char*) ;

void
CgGenerateAmlLengths (
    ACPI_PARSE_OBJECT *Op)
{
    char *Buffer;
    ACPI_STATUS Status;


    switch (Op->Asl.AmlOpcode)
    {
    case 143:

        Op->Asl.AmlOpcodeLength = 0;
        Op->Asl.AmlLength = 1;
        return;

    case 139:

        Op->Asl.AmlOpcodeLength = 0;
        Op->Asl.AmlLength = 2;
        return;

    case 141:

        Op->Asl.AmlOpcodeLength = 0;
        Op->Asl.AmlLength = 4;
        return;

    case 140:

        Op->Asl.AmlOpcodeLength = 0;
        Op->Asl.AmlLength = 8;
        return;

    case 144:



        Op->Asl.AmlOpcodeLength = 0;
        return;

    case 142:



        Op->Asl.AmlOpcodeLength = 0;
        return;

    default:

        break;
    }

    switch (Op->Asl.ParseOpcode)
    {
    case 137:

        AslGbl_TableLength = sizeof (ACPI_TABLE_HEADER) + Op->Asl.AmlSubtreeLength;
        break;

    case 132:

        Op->Asl.AmlOpcodeLength = 0;
        Op->Asl.AmlLength = 4;
        Op->Asl.ExternalName = Op->Asl.Value.String;
        break;

    case 131:
    case 133:

        if (Op->Asl.CompileFlags & OP_NAME_INTERNALIZED)
        {
            break;
        }

        Op->Asl.AmlOpcodeLength = 0;
        Status = UtInternalizeName (Op->Asl.Value.String, &Buffer);
        if (ACPI_FAILURE (Status))
        {
            DbgPrint (ASL_DEBUG_OUTPUT,
                "Failure from internalize name %X\n", Status);
            break;
        }

        Op->Asl.ExternalName = Op->Asl.Value.String;
        Op->Asl.Value.String = Buffer;
        Op->Asl.CompileFlags |= OP_NAME_INTERNALIZED;
        Op->Asl.AmlLength = strlen (Buffer);






        if (Op->Asl.AmlLength == 1 || UtNameContainsAllPrefix(Op))
        {
            Op->Asl.AmlLength++;
        }
        break;

    case 128:

        Op->Asl.AmlOpcodeLength = 1;



        Op->Asl.AmlLength = strlen (Op->Asl.Value.String) + 1;
        break;

    case 130:

        Op->Asl.AmlOpcodeLength = 0;
        Op->Asl.AmlPkgLenBytes = CgGetPackageLenByteCount (Op,
            (UINT32) Op->Asl.Value.Integer);
        break;

    case 129:

        Op->Asl.AmlOpcodeLength = 0;
        break;

    case 138:
    case 135:
    case 134:



        break;

    case 136:

        CgGenerateAmlOpcodeLength (Op);
        break;

    default:

        CgGenerateAmlOpcodeLength (Op);
        break;
    }
}
