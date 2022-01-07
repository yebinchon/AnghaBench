
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_11__ {int ObjectType; } ;
struct TYPE_10__ {int * WalkState; } ;
struct TYPE_8__ {scalar_t__ Node; int AmlOpcode; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OP_WALK_INFO ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;
typedef int ACPI_OBJECT_TYPE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiDmCheckResourceReference (TYPE_2__*,int *) ;
 int AcpiDsScopeStackPush (scalar_t__,int ,int *) ;
 scalar_t__ AcpiNsOpensScope (int ) ;
 TYPE_4__* AcpiPsGetOpcodeInfo (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmProcessResourceDescriptors (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_OP_WALK_INFO *Info = Context;
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_WALK_STATE *WalkState;
    ACPI_OBJECT_TYPE ObjectType;
    ACPI_STATUS Status;


    WalkState = Info->WalkState;
    OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);



    ObjectType = OpInfo->ObjectType;
    if (AcpiNsOpensScope (ObjectType))
    {
        if (Op->Common.Node)
        {

            Status = AcpiDsScopeStackPush (Op->Common.Node, ObjectType,
                WalkState);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
        }
    }





    AcpiDmCheckResourceReference (Op, WalkState);
    return (AE_OK);
}
