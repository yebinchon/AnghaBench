
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {int TypeSpecific; int Granularity; } ;
struct TYPE_7__ {TYPE_1__ ExtAddress64; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 int ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64 ;
 int AcpiDmAddressCommon (TYPE_2__*,int ,int ) ;
 int AcpiDmAddressFields (int *,int,int ) ;
 int AcpiDmAddressFlags (TYPE_2__*) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmDumpInteger64 (int ,char*) ;
 int AcpiDmIndent (int ) ;
 int AcpiOsPrintf (char*) ;

void
AcpiDmExtendedDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{



    AcpiDmAddressCommon (
        Resource, ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64, Level);



    AcpiDmAddressFields (&Resource->ExtAddress64.Granularity, 64, Level);



    AcpiDmIndent (Level + 1);
    AcpiDmDumpInteger64 (Resource->ExtAddress64.TypeSpecific,
        "Type-Specific Attributes");



    AcpiDmIndent (Level + 1);
    AcpiDmDescriptorName ();



    AcpiDmAddressFlags (Resource);
    AcpiOsPrintf (")\n");
}
