
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {int Integer; } ;
struct TYPE_7__ {TYPE_1__ Value; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_FORMAT_UINT64 (int ) ;
 int ASL_TREE_OUTPUT ;
 int DbgPrint (int ,char*,int,...) ;
 int UtDumpParseOpName (TYPE_3__*,int,int) ;

void
UtDumpIntegerOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    UINT32 IntegerLength)
{



    UtDumpParseOpName (Op, Level, IntegerLength);



    switch (IntegerLength)
    {
    case 2:
    case 4:
    case 8:

        DbgPrint (ASL_TREE_OUTPUT,
            "%*.*X", IntegerLength, IntegerLength, (UINT32) Op->Asl.Value.Integer);
        break;

    case 16:

        DbgPrint (ASL_TREE_OUTPUT,
            "%8.8X%8.8X", ACPI_FORMAT_UINT64 (Op->Asl.Value.Integer));
        break;

    default:
        break;
    }
}
