
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_19__ {int Level; } ;
struct TYPE_14__ {scalar_t__ Integer; } ;
struct TYPE_16__ {TYPE_10__* Parent; TYPE_1__ Value; } ;
struct TYPE_17__ {int * Data; } ;
struct TYPE_18__ {TYPE_3__ Common; TYPE_4__ Named; } ;
struct TYPE_15__ {int DisasmOpcode; } ;
struct TYPE_13__ {TYPE_2__ Common; } ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;
typedef TYPE_6__ ACPI_OP_WALK_INFO ;
 int ACPI_UINT16_MAX ;
 int AcpiDmDisasmByteList (int ,int *,scalar_t__) ;
 int AcpiDmIndent (int ) ;
 int AcpiDmPldBuffer (int ,int *,scalar_t__) ;
 int AcpiDmResourceTemplate (TYPE_6__*,TYPE_10__*,int *,scalar_t__) ;
 int AcpiDmUnicode (TYPE_5__*) ;
 int AcpiDmUuid (TYPE_5__*) ;
 int AcpiOsPrintf (char*) ;
 int AcpiUtPrintString (char*,int ) ;

void
AcpiDmByteList (
    ACPI_OP_WALK_INFO *Info,
    ACPI_PARSE_OBJECT *Op)
{
    UINT8 *ByteData;
    UINT32 ByteCount;


    ByteData = Op->Named.Data;
    ByteCount = (UINT32) Op->Common.Value.Integer;





    switch (Op->Common.Parent->Common.DisasmOpcode)
    {
    case 131:

        AcpiDmResourceTemplate (
            Info, Op->Common.Parent, ByteData, ByteCount);
        break;

    case 130:

        AcpiDmIndent (Info->Level);
        AcpiUtPrintString ((char *) ByteData, ACPI_UINT16_MAX);
        AcpiOsPrintf ("\n");
        break;

    case 128:

        AcpiDmUuid (Op);
        break;

    case 129:

        AcpiDmUnicode (Op);
        break;

    case 132:



        AcpiDmPldBuffer (Info->Level, ByteData, ByteCount);
        break;

    case 133:
    default:




        AcpiDmDisasmByteList (Info->Level, ByteData, ByteCount);
        break;
    }
}
