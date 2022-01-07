
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_7__ {int WalkState; } ;
struct TYPE_5__ {int AmlOpcode; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OP_WALK_INFO ;
typedef int ACPI_OBJECT_TYPE ;


 int AE_OK ;
 int AcpiDsScopeStackPop (int ) ;
 scalar_t__ AcpiNsOpensScope (int ) ;
 int AslMapNamedOpcodeToDataType (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmCommonAscendingOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    ACPI_OP_WALK_INFO *Info = Context;
    ACPI_OBJECT_TYPE ObjectType;




    ObjectType = AslMapNamedOpcodeToDataType (Op->Asl.AmlOpcode);

    if (AcpiNsOpensScope (ObjectType))
    {
        (void) AcpiDsScopeStackPop (Info->WalkState);
    }

    return (AE_OK);
}
