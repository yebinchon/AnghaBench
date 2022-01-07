
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_7__ {int Granularity; } ;
struct TYPE_8__ {TYPE_1__ Address16; } ;
typedef int AML_RESOURCE_ADDRESS16 ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 int ACPI_RESOURCE_TYPE_ADDRESS16 ;
 int AcpiDmAddressCommon (TYPE_2__*,int ,int ) ;
 int AcpiDmAddressFields (int *,int,int ) ;
 int AcpiDmAddressFlags (TYPE_2__*) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (int ) ;
 int AcpiDmResourceSource (TYPE_2__*,int,int ) ;
 int AcpiOsPrintf (char*) ;

void
AcpiDmWordDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{



    AcpiDmAddressCommon (Resource, ACPI_RESOURCE_TYPE_ADDRESS16, Level);



    AcpiDmAddressFields (&Resource->Address16.Granularity, 16, Level);



    AcpiDmIndent (Level + 1);
    AcpiDmResourceSource (Resource, sizeof (AML_RESOURCE_ADDRESS16), Length);



    AcpiDmDescriptorName ();



    AcpiDmAddressFlags (Resource);
    AcpiOsPrintf (")\n");
}
