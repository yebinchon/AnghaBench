
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int ResourceType; int SpecificFlags; int Flags; } ;
struct TYPE_5__ {TYPE_1__ Address; } ;
typedef TYPE_2__ AML_RESOURCE ;


 size_t ACPI_GET_2BIT_FLAG (int) ;
 int ACPI_IO_RANGE ;
 int ACPI_MEMORY_RANGE ;
 int AcpiDmAddressPrefix (int) ;
 int AcpiDmIndent (int ) ;
 int AcpiDmIoFlags (int) ;
 int AcpiDmMemoryFlags (int,int) ;
 int AcpiDmSpaceFlags (int) ;
 int* AcpiGbl_RngDecode ;
 int* AcpiGbl_WordDecode ;
 int AcpiOsPrintf (char*,int) ;

__attribute__((used)) static void
AcpiDmAddressCommon (
    AML_RESOURCE *Resource,
    UINT8 Type,
    UINT32 Level)
{
    UINT8 ResourceType;
    UINT8 SpecificFlags;
    UINT8 Flags;


    ResourceType = Resource->Address.ResourceType;
    SpecificFlags = Resource->Address.SpecificFlags;
    Flags = Resource->Address.Flags;

    AcpiDmIndent (Level);



    if ((ResourceType > 2) && (ResourceType < 0xC0))
    {
        AcpiOsPrintf (
            "/**** Invalid Resource Type: 0x%X ****/", ResourceType);
        return;
    }



    AcpiDmAddressPrefix (Type);



    if (ResourceType > 2)
    {
        AcpiOsPrintf ("Space (0x%2.2X, ", ResourceType);
        AcpiDmSpaceFlags (Flags);
        AcpiOsPrintf (" 0x%2.2X,", SpecificFlags);
        return;
    }



    AcpiOsPrintf ("%s (",
        AcpiGbl_WordDecode [ACPI_GET_2BIT_FLAG (ResourceType)]);



    if (ResourceType == ACPI_MEMORY_RANGE)
    {
        AcpiDmMemoryFlags (Flags, SpecificFlags);
    }
    else
    {
        AcpiDmIoFlags (Flags);
        if (ResourceType == ACPI_IO_RANGE)
        {
            AcpiOsPrintf (" %s,",
                AcpiGbl_RngDecode [ACPI_GET_2BIT_FLAG (SpecificFlags)]);
        }
    }
}
