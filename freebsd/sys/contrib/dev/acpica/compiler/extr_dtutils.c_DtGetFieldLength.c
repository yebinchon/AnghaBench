
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_3__ {int Opcode; char* Name; } ;
typedef int DT_FIELD ;
typedef int ACPI_IORT_MEMORY_ACCESS ;
typedef int ACPI_HEST_NOTIFY ;
typedef int ACPI_GENERIC_ADDRESS ;
typedef TYPE_1__ ACPI_DMTABLE_INFO ;
 int ASL_MSG_COMPILER_INTERNAL ;
 char* AslGbl_MsgBuffer ;
 int DtFatal (int ,int *,char*) ;
 int DtGetBufferLength (char*) ;
 char* DtGetFieldValue (int *) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

UINT32
DtGetFieldLength (
    DT_FIELD *Field,
    ACPI_DMTABLE_INFO *Info)
{
    UINT32 ByteLength = 0;
    char *Value;




    switch (Info->Opcode)
    {
    case 180:
    case 179:
    case 178:
    case 177:
    case 176:
    case 175:
    case 174:
    case 173:
    case 172:
    case 171:
    case 169:
    case 168:
    case 167:
    case 165:
    case 164:
    case 166:
    case 170:
    case 155:
    case 182:

        ByteLength = 0;
        break;

    case 130:
    case 189:
    case 141:
    case 197:
    case 156:
    case 162:
    case 153:
    case 148:
    case 146:
    case 145:
    case 143:
    case 140:
    case 196:
    case 159:
    case 181:
    case 186:
    case 185:
    case 184:
    case 183:
    case 187:

        ByteLength = 1;
        break;

    case 137:
    case 188:
    case 161:
    case 158:
    case 149:
    case 147:

        ByteLength = 2;
        break;

    case 136:

        ByteLength = 3;
        break;

    case 135:
    case 152:
    case 142:
    case 154:
    case 138:

        ByteLength = 4;
        break;

    case 134:

        ByteLength = 5;
        break;

    case 133:
    case 151:

        ByteLength = 6;
        break;

    case 132:
    case 191:

        ByteLength = 7;
        break;

    case 131:
    case 150:

        ByteLength = 8;
        break;

    case 139:

        Value = DtGetFieldValue (Field);
        if (Value)
        {
            ByteLength = strlen (Value) + 1;
        }
        else
        {

            sprintf (AslGbl_MsgBuffer, "Expected \"%s\"", Info->Name);
            DtFatal (ASL_MSG_COMPILER_INTERNAL, ((void*)0), AslGbl_MsgBuffer);
            return (0);
        }
        break;

    case 163:

        ByteLength = sizeof (ACPI_GENERIC_ADDRESS);
        break;

    case 160:

        ByteLength = sizeof (ACPI_HEST_NOTIFY);
        break;

    case 157:

        ByteLength = sizeof (ACPI_IORT_MEMORY_ACCESS);
        break;

    case 190:
    case 144:

        Value = DtGetFieldValue (Field);
        if (Value)
        {
            ByteLength = DtGetBufferLength (Value);
        }
        else
        {

            sprintf (AslGbl_MsgBuffer, "Expected \"%s\"", Info->Name);
            DtFatal (ASL_MSG_COMPILER_INTERNAL, ((void*)0), AslGbl_MsgBuffer);
            return (0);
        }
        break;

    case 195:

        ByteLength = 10;
        break;

    case 194:

        ByteLength = 12;
        break;

    case 192:
    case 128:

        ByteLength = 16;
        break;

    case 193:

        ByteLength = 128;
        break;

    case 129:

        Value = DtGetFieldValue (Field);



        ByteLength = (strlen (Value) + 1) * sizeof(UINT16);
        break;

    default:

        DtFatal (ASL_MSG_COMPILER_INTERNAL, Field, "Invalid table opcode");
        return (0);
    }

    return (ByteLength);
}
