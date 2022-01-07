
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int Flags; int IrqMask; } ;
struct TYPE_5__ {TYPE_1__ Irq; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_EXTRACT_1BIT_FLAG (int,int) ;
 size_t ACPI_EXTRACT_2BIT_FLAG (int,int) ;
 size_t ACPI_GET_1BIT_FLAG (int) ;
 int AcpiDmBitList (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (int) ;
 int * AcpiGbl_HeDecode ;
 int * AcpiGbl_IrqDecode ;
 int * AcpiGbl_LlDecode ;
 int * AcpiGbl_ShrDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmIrqDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{

    AcpiDmIndent (Level);
    AcpiOsPrintf ("%s (",
        AcpiGbl_IrqDecode [ACPI_GET_1BIT_FLAG (Length)]);



    if (Length & 1)
    {
        AcpiOsPrintf ("%s, %s, %s, ",
            AcpiGbl_HeDecode [ACPI_GET_1BIT_FLAG (Resource->Irq.Flags)],
            AcpiGbl_LlDecode [ACPI_EXTRACT_1BIT_FLAG (Resource->Irq.Flags, 3)],
            AcpiGbl_ShrDecode [ACPI_EXTRACT_2BIT_FLAG (Resource->Irq.Flags, 4)]);
    }



    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");

    AcpiDmIndent (Level + 1);
    AcpiDmBitList (Resource->Irq.IrqMask);
}
