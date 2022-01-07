
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {scalar_t__ AccessSize; int Address; int BitOffset; int BitWidth; int AddressSpaceId; } ;
struct TYPE_5__ {TYPE_1__ GenericReg; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 int AcpiDmAddressSpace (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmDumpInteger64 (int ,char*) ;
 int AcpiDmDumpInteger8 (int ,char*) ;
 int AcpiDmIndent (scalar_t__) ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmGenericRegisterDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{

    AcpiDmIndent (Level);
    AcpiOsPrintf ("Register (");
    AcpiDmAddressSpace (Resource->GenericReg.AddressSpaceId);
    AcpiOsPrintf ("\n");

    AcpiDmIndent (Level + 1);
    AcpiDmDumpInteger8 (Resource->GenericReg.BitWidth, "Bit Width");

    AcpiDmIndent (Level + 1);
    AcpiDmDumpInteger8 (Resource->GenericReg.BitOffset, "Bit Offset");

    AcpiDmIndent (Level + 1);
    AcpiDmDumpInteger64 (Resource->GenericReg.Address, "Address");



    AcpiDmIndent (Level + 1);
    if (Resource->GenericReg.AccessSize)
    {
        AcpiOsPrintf ("0x%2.2X,               // %s\n",
            Resource->GenericReg.AccessSize, "Access Size");
        AcpiDmIndent (Level + 1);
    }
    else
    {
        AcpiOsPrintf (",");
    }



    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");
}
