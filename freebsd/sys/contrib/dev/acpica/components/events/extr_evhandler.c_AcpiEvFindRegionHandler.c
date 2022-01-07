
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ SpaceId; TYPE_2__* Next; } ;
struct TYPE_6__ {TYPE_1__ AddressSpace; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef scalar_t__ ACPI_ADR_SPACE_TYPE ;



ACPI_OPERAND_OBJECT *
AcpiEvFindRegionHandler (
    ACPI_ADR_SPACE_TYPE SpaceId,
    ACPI_OPERAND_OBJECT *HandlerObj)
{



    while (HandlerObj)
    {


        if (HandlerObj->AddressSpace.SpaceId == SpaceId)
        {
            return (HandlerObj);
        }



        HandlerObj = HandlerObj->AddressSpace.Next;
    }

    return (((void*)0));
}
