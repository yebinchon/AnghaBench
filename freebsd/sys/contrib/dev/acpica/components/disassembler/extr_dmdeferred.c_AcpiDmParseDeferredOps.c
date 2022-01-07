
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int Flags; } ;
struct TYPE_12__ {int AmlOpcode; } ;
struct TYPE_11__ {int Length; int Data; } ;
struct TYPE_13__ {TYPE_2__ Common; TYPE_1__ Named; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;


 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int AML_DEFER ;




 int AcpiDmDeferredParse (TYPE_3__*,int ,int ) ;
 TYPE_3__* AcpiPsGetDepthNext (TYPE_3__*,TYPE_3__*) ;
 TYPE_4__* AcpiPsGetOpcodeInfo (int) ;
 int DmParseDeferredOps ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDmParseDeferredOps (
    ACPI_PARSE_OBJECT *Root)
{
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_PARSE_OBJECT *Op = Root;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (DmParseDeferredOps);




    while (Op)
    {
        OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);
        if (!(OpInfo->Flags & AML_DEFER))
        {
            Op = AcpiPsGetDepthNext (Root, Op);
            continue;
        }



        switch (Op->Common.AmlOpcode)
        {
        case 131:
        case 139:
        case 130:
        case 128:

            Status = AcpiDmDeferredParse (
                Op, Op->Named.Data, Op->Named.Length);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
            break;



        case 129:
        case 132:
        case 134:
        case 136:
        case 133:
        case 137:
        case 138:
        case 135:
        case 140:

            break;

        default:

            ACPI_ERROR ((AE_INFO, "Unhandled deferred AML opcode [0x%.4X]",
                 Op->Common.AmlOpcode));
            break;
        }

        Op = AcpiPsGetDepthNext (Root, Op);
    }

    return_ACPI_STATUS (AE_OK);
}
