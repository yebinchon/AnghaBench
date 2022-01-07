
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int Width; int Channels; int RequestLines; } ;
struct TYPE_5__ {TYPE_1__ FixedDma; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (int ) ;
 int * AcpiGbl_DtsDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmFixedDmaDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{

    AcpiDmIndent (Level);
    AcpiOsPrintf ("FixedDMA (0x%4.4X, 0x%4.4X, ",
        Resource->FixedDma.RequestLines,
        Resource->FixedDma.Channels);

    if (Resource->FixedDma.Width <= 5)
    {
        AcpiOsPrintf ("%s, ",
            AcpiGbl_DtsDecode [Resource->FixedDma.Width]);
    }
    else
    {
        AcpiOsPrintf ("%X /* INVALID DMA WIDTH */, ",
            Resource->FixedDma.Width);
    }



    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");
}
