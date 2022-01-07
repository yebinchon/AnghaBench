
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ AmlOpcode; int Node; int DisasmOpcode; TYPE_2__* Parent; } ;
struct TYPE_10__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_DASM_RESOURCE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ AML_BUFFER_OP ;
 scalar_t__ AML_NAME_OP ;
 int AcpiDmAddResourcesToNamespace (int ,TYPE_2__*) ;
 int AcpiDmIsResourceTemplate (int *,TYPE_2__*) ;
 TYPE_2__* AcpiPsGetDepthNext (TYPE_2__*,TYPE_2__*) ;

void
AcpiDmFindResources (
    ACPI_PARSE_OBJECT *Root)
{
    ACPI_PARSE_OBJECT *Op = Root;
    ACPI_PARSE_OBJECT *Parent;




    while (Op)
    {


        if (Op->Common.AmlOpcode == AML_BUFFER_OP)
        {


            Parent = Op->Common.Parent;
            if (Parent->Common.AmlOpcode == AML_NAME_OP)
            {





                if (ACPI_SUCCESS (AcpiDmIsResourceTemplate (((void*)0), Op)))
                {
                    Op->Common.DisasmOpcode = ACPI_DASM_RESOURCE;
                    AcpiDmAddResourcesToNamespace (Parent->Common.Node, Op);
                }
            }
        }

        Op = AcpiPsGetDepthNext (Root, Op);
    }
}
