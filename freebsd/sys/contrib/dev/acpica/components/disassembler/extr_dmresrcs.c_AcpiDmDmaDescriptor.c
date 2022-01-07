
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int DmaChannelMask; int Flags; } ;
struct TYPE_5__ {TYPE_1__ Dma; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_EXTRACT_1BIT_FLAG (int ,int) ;
 size_t ACPI_EXTRACT_2BIT_FLAG (int ,int) ;
 size_t ACPI_GET_2BIT_FLAG (int ) ;
 int AcpiDmBitList (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (scalar_t__) ;
 int * AcpiGbl_BmDecode ;
 int * AcpiGbl_SizDecode ;
 int * AcpiGbl_TypDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmDmaDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{

    AcpiDmIndent (Level);
    AcpiOsPrintf ("DMA (%s, %s, %s, ",
        AcpiGbl_TypDecode [ACPI_EXTRACT_2BIT_FLAG (Resource->Dma.Flags, 5)],
        AcpiGbl_BmDecode [ACPI_EXTRACT_1BIT_FLAG (Resource->Dma.Flags, 2)],
        AcpiGbl_SizDecode [ACPI_GET_2BIT_FLAG (Resource->Dma.Flags)]);



    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");

    AcpiDmIndent (Level + 1);
    AcpiDmBitList (Resource->Dma.DmaChannelMask);
}
