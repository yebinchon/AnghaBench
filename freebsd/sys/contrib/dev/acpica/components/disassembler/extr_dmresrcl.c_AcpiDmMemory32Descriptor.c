
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int Minimum; int Flags; } ;
struct TYPE_5__ {TYPE_1__ Memory32; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_GET_1BIT_FLAG (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (scalar_t__) ;
 int AcpiDmMemoryFields (int *,int,scalar_t__) ;
 int * AcpiGbl_RwDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmMemory32Descriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{



    AcpiDmIndent (Level);
    AcpiOsPrintf ("Memory32 (%s,\n",
        AcpiGbl_RwDecode [ACPI_GET_1BIT_FLAG (Resource->Memory32.Flags)]);



    AcpiDmMemoryFields (&Resource->Memory32.Minimum, 32, Level);



    AcpiDmIndent (Level + 1);
    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");
}
