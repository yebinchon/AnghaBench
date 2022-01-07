
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_10__ {scalar_t__ StartAml; scalar_t__ AmlOffset; int * WalkState; } ;
struct TYPE_8__ {scalar_t__ Aml; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OP_WALK_INFO ;


 int AcpiDmAscendingOp ;
 int AcpiDmDescendingOp ;
 int AcpiDmWalkParseTree (TYPE_2__*,int ,int ,TYPE_3__*) ;
 int memset (TYPE_3__*,int ,int) ;

void
AcpiDmDisassemble (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Origin,
    UINT32 NumOpcodes)
{
    ACPI_PARSE_OBJECT *Op = Origin;
    ACPI_OP_WALK_INFO Info;


    if (!Op)
    {
        return;
    }

    memset (&Info, 0, sizeof (ACPI_OP_WALK_INFO));
    Info.WalkState = WalkState;
    Info.StartAml = Op->Common.Aml - sizeof (ACPI_TABLE_HEADER);
    Info.AmlOffset = Op->Common.Aml - Info.StartAml;

    AcpiDmWalkParseTree (Op, AcpiDmDescendingOp, AcpiDmAscendingOp, &Info);
    return;
}
