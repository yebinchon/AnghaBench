
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int ParseOpcode; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int BLOCK_BRACE ;
 int BLOCK_NONE ;
 int BLOCK_PAREN ;
UINT32
CvParseOpBlockType (
    ACPI_PARSE_OBJECT *Op)
{

    if (!Op)
    {
        return (BLOCK_NONE);
    }

    switch (Op->Asl.ParseOpcode)
    {


    case 131:
    case 156:
    case 155:
    case 154:
    case 151:
    case 148:
    case 147:
    case 146:
    case 143:
    case 149:
    case 142:
    case 138:
    case 137:
    case 136:
    case 153:
    case 134:
    case 133:
    case 132:
    case 128:



    case 135:
    case 130:
    case 129:
    case 141:
    case 139:
    case 140:
    case 145:
    case 144:
    case 150:



    case 152:
        return (BLOCK_PAREN | BLOCK_BRACE);

    default:
        return (BLOCK_NONE);
    }
}
