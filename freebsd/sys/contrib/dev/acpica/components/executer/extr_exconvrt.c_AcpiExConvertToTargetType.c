
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int Type; } ;
struct TYPE_18__ {TYPE_1__ Common; } ;
struct TYPE_17__ {int Opcode; TYPE_2__* OpInfo; } ;
struct TYPE_16__ {int RuntimeArgs; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMPLICIT_CONVERSION ;
 int ACPI_IMPLICIT_CONVERT_HEX ;







 scalar_t__ AE_AML_INTERNAL ;
 int AE_INFO ;
 scalar_t__ AE_OK ;
 scalar_t__ AE_TYPE ;






 scalar_t__ AcpiExConvertToBuffer (TYPE_4__*,TYPE_4__**) ;
 scalar_t__ AcpiExConvertToInteger (TYPE_4__*,TYPE_4__**,int ) ;
 scalar_t__ AcpiExConvertToString (TYPE_4__*,TYPE_4__**,int ) ;
 int AcpiUtGetObjectTypeName (TYPE_4__*) ;
 int AcpiUtGetTypeName (int ) ;
 int ExConvertToTargetType ;
 int GET_CURRENT_ARG_TYPE (int ) ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiExConvertToTargetType (
    ACPI_OBJECT_TYPE DestinationType,
    ACPI_OPERAND_OBJECT *SourceDesc,
    ACPI_OPERAND_OBJECT **ResultDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (ExConvertToTargetType);




    *ResultDesc = SourceDesc;





    switch (GET_CURRENT_ARG_TYPE (WalkState->OpInfo->RuntimeArgs))
    {
    case 130:
    case 133:
    case 132:

        switch (DestinationType)
        {
        case 135:



            break;

        default:



            if (DestinationType != SourceDesc->Common.Type)
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_INFO,
                    "Explicit operator, will store (%s) over existing type (%s)\n",
                    AcpiUtGetObjectTypeName (SourceDesc),
                    AcpiUtGetTypeName (DestinationType)));
                Status = AE_TYPE;
            }
        }
        break;

    case 128:
    case 129:

        switch (DestinationType)
        {
        case 138:
        case 139:
        case 137:
        case 136:




            Status = AcpiExConvertToInteger (SourceDesc, ResultDesc,
                ACPI_IMPLICIT_CONVERSION);
            break;

        case 134:




            Status = AcpiExConvertToString (SourceDesc, ResultDesc,
                ACPI_IMPLICIT_CONVERT_HEX);
            break;

        case 140:




            Status = AcpiExConvertToBuffer (SourceDesc, ResultDesc);
            break;

        default:

            ACPI_ERROR ((AE_INFO,
                "Bad destination type during conversion: 0x%X",
                DestinationType));
            Status = AE_AML_INTERNAL;
            break;
        }
        break;

    case 131:



        break;

    default:

        ACPI_ERROR ((AE_INFO,
            "Unknown Target type ID 0x%X AmlOpcode 0x%X DestType %s",
            GET_CURRENT_ARG_TYPE (WalkState->OpInfo->RuntimeArgs),
            WalkState->Opcode, AcpiUtGetTypeName (DestinationType)));
        Status = AE_AML_INTERNAL;
    }







    if (Status == AE_TYPE)
    {
        Status = AE_OK;
    }

    return_ACPI_STATUS (Status);
}
