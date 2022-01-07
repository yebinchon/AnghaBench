
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int Flags; int Opcode; } ;
typedef TYPE_1__ ACPI_DMTABLE_INFO ;
 int DT_FIELD_TYPE_BUFFER ;
 int DT_FIELD_TYPE_DEVICE_PATH ;
 int DT_FIELD_TYPE_FLAG ;
 int DT_FIELD_TYPE_FLAGS_INTEGER ;
 int DT_FIELD_TYPE_INLINE_SUBTABLE ;
 int DT_FIELD_TYPE_INTEGER ;
 int DT_FIELD_TYPE_LABEL ;
 int DT_FIELD_TYPE_STRING ;
 int DT_FIELD_TYPE_UNICODE ;
 int DT_FIELD_TYPE_UUID ;
 int DT_FLAG ;

UINT8
DtGetFieldType (
    ACPI_DMTABLE_INFO *Info)
{
    UINT8 Type;





    if (Info->Flags & DT_FLAG)
    {
        return (DT_FIELD_TYPE_FLAGS_INTEGER);
    }



    switch (Info->Opcode)
    {
    case 157:
    case 156:
    case 155:
    case 154:
    case 153:
    case 152:
    case 151:
    case 150:
    case 149:
    case 148:
    case 146:
    case 145:
    case 144:
    case 142:
    case 141:
    case 143:
    case 147:

        Type = DT_FIELD_TYPE_FLAG;
        break;

    case 136:
    case 131:
    case 135:
    case 134:
    case 130:

        Type = DT_FIELD_TYPE_STRING;
        break;

    case 159:
    case 132:
    case 160:
    case 164:
    case 163:
    case 161:
    case 162:
    case 133:

        Type = DT_FIELD_TYPE_BUFFER;
        break;

    case 140:
    case 139:
    case 138:

        Type = DT_FIELD_TYPE_INLINE_SUBTABLE;
        break;

    case 129:

        Type = DT_FIELD_TYPE_UNICODE;
        break;

    case 128:

        Type = DT_FIELD_TYPE_UUID;
        break;

    case 158:

        Type = DT_FIELD_TYPE_DEVICE_PATH;
        break;

    case 137:

        Type = DT_FIELD_TYPE_LABEL;
        break;

    default:

        Type = DT_FIELD_TYPE_INTEGER;
        break;
    }

    return (Type);
}
