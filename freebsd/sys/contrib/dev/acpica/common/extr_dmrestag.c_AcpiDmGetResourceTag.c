
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT8 ;
typedef int UINT32 ;
struct TYPE_8__ {size_t Type; } ;
struct TYPE_7__ {size_t ConnectionType; } ;
struct TYPE_6__ {int ResourceType; } ;
struct TYPE_9__ {int DescriptorType; TYPE_3__ CommonSerialBus; TYPE_2__ Gpio; TYPE_1__ Address; } ;
typedef TYPE_4__ AML_RESOURCE ;
typedef int ACPI_RESOURCE_TAG ;


 int ACPI_ADDRESS_TYPE_IO_RANGE ;
 int ACPI_ADDRESS_TYPE_MEMORY_RANGE ;






 size_t AML_RESOURCE_MAX_GPIOTYPE ;
 size_t AML_RESOURCE_MAX_SERIALBUSTYPE ;
 int const* AcpiDmIoFlagTags ;
 int const* AcpiDmMemoryFlagTags ;
 char* AcpiDmSearchTagList (int ,int const*) ;
 int ** AcpiGbl_GpioResourceTags ;
 int ** AcpiGbl_ResourceTags ;
 int ** AcpiGbl_SerialResourceTags ;

__attribute__((used)) static char *
AcpiDmGetResourceTag (
    UINT32 BitIndex,
    AML_RESOURCE *Resource,
    UINT8 ResourceIndex)
{
    const ACPI_RESOURCE_TAG *TagList;
    char *Tag = ((void*)0);




    TagList = AcpiGbl_ResourceTags[ResourceIndex];




    switch (Resource->DescriptorType)
    {
    case 133:
    case 132:
    case 131:
    case 130:




        if (Resource->Address.ResourceType == ACPI_ADDRESS_TYPE_MEMORY_RANGE)
        {
            Tag = AcpiDmSearchTagList (BitIndex, AcpiDmMemoryFlagTags);
        }
        else if (Resource->Address.ResourceType == ACPI_ADDRESS_TYPE_IO_RANGE)
        {
            Tag = AcpiDmSearchTagList (BitIndex, AcpiDmIoFlagTags);
        }



        if (Tag)
        {
            return (Tag);
        }
        break;

    case 129:



        if (Resource->Gpio.ConnectionType > AML_RESOURCE_MAX_GPIOTYPE)
        {
            return (((void*)0));
        }

        TagList = AcpiGbl_GpioResourceTags[Resource->Gpio.ConnectionType];
        break;

    case 128:



        if ((Resource->CommonSerialBus.Type == 0) ||
            (Resource->CommonSerialBus.Type > AML_RESOURCE_MAX_SERIALBUSTYPE))
        {
            return (((void*)0));
        }

        TagList = AcpiGbl_SerialResourceTags[Resource->CommonSerialBus.Type];
        break;

    default:

        break;
    }



    if (TagList)
    {
        Tag = AcpiDmSearchTagList (BitIndex, TagList);
    }

    return (Tag);
}
