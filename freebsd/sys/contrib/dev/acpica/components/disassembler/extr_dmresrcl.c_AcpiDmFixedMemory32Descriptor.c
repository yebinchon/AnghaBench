
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int AddressLength; int Address; int Flags; } ;
struct TYPE_5__ {TYPE_1__ FixedMemory32; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_GET_1BIT_FLAG (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmDumpInteger32 (int ,char*) ;
 int AcpiDmIndent (scalar_t__) ;
 int * AcpiGbl_RwDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmFixedMemory32Descriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{



    AcpiDmIndent (Level);
    AcpiOsPrintf ("Memory32Fixed (%s,\n",
        AcpiGbl_RwDecode [ACPI_GET_1BIT_FLAG (Resource->FixedMemory32.Flags)]);

    AcpiDmIndent (Level + 1);
    AcpiDmDumpInteger32 (Resource->FixedMemory32.Address,
        "Address Base");

    AcpiDmIndent (Level + 1);
    AcpiDmDumpInteger32 (Resource->FixedMemory32.AddressLength,
        "Address Length");



    AcpiDmIndent (Level + 1);
    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");
}
