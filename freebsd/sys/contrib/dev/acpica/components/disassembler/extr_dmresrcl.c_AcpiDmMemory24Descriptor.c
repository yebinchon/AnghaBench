
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int Minimum; int Flags; } ;
struct TYPE_5__ {TYPE_1__ Memory24; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_GET_1BIT_FLAG (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (scalar_t__) ;
 int AcpiDmMemoryFields (int *,int,scalar_t__) ;
 int * AcpiGbl_RwDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmMemory24Descriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{



    AcpiDmIndent (Level);
    AcpiOsPrintf ("Memory24 (%s,\n",
        AcpiGbl_RwDecode [ACPI_GET_1BIT_FLAG (Resource->Memory24.Flags)]);



    AcpiDmMemoryFields (&Resource->Memory24.Minimum, 16, Level);



    AcpiDmIndent (Level + 1);
    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");
}
