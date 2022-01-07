
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int InterruptCount; scalar_t__* Interrupts; int ResourceLength; int Flags; } ;
struct TYPE_6__ {TYPE_1__ ExtendedIrq; } ;
typedef int AML_RESOURCE_EXTENDED_IRQ ;
typedef TYPE_2__ AML_RESOURCE ;
typedef int ACPI_OP_WALK_INFO ;


 size_t ACPI_EXTRACT_1BIT_FLAG (int ,int) ;
 size_t ACPI_EXTRACT_2BIT_FLAG (int ,int) ;
 size_t ACPI_GET_1BIT_FLAG (int ) ;
 int AcpiDmDescriptorName () ;
 int AcpiDmIndent (int) ;
 int AcpiDmResourceSource (TYPE_2__*,int,int ) ;
 int * AcpiGbl_ConsumeDecode ;
 int * AcpiGbl_HeDecode ;
 int * AcpiGbl_LlDecode ;
 int * AcpiGbl_ShrDecode ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmInterruptDescriptor (
    ACPI_OP_WALK_INFO *Info,
    AML_RESOURCE *Resource,
    UINT32 Length,
    UINT32 Level)
{
    UINT32 i;


    AcpiDmIndent (Level);
    AcpiOsPrintf ("Interrupt (%s, %s, %s, %s, ",
        AcpiGbl_ConsumeDecode [ACPI_GET_1BIT_FLAG (Resource->ExtendedIrq.Flags)],
        AcpiGbl_HeDecode [ACPI_EXTRACT_1BIT_FLAG (Resource->ExtendedIrq.Flags, 1)],
        AcpiGbl_LlDecode [ACPI_EXTRACT_1BIT_FLAG (Resource->ExtendedIrq.Flags, 2)],
        AcpiGbl_ShrDecode [ACPI_EXTRACT_2BIT_FLAG (Resource->ExtendedIrq.Flags, 3)]);






    AcpiDmResourceSource (Resource,
        sizeof (AML_RESOURCE_EXTENDED_IRQ) +
            ((UINT32) Resource->ExtendedIrq.InterruptCount - 1) * sizeof (UINT32),
        Resource->ExtendedIrq.ResourceLength);



    AcpiDmDescriptorName ();
    AcpiOsPrintf (")\n");



    AcpiDmIndent (Level);
    AcpiOsPrintf ("{\n");
    for (i = 0; i < Resource->ExtendedIrq.InterruptCount; i++)
    {
        AcpiDmIndent (Level + 1);
        AcpiOsPrintf ("0x%8.8X,\n",
            (UINT32) Resource->ExtendedIrq.Interrupts[i]);
    }

    AcpiDmIndent (Level);
    AcpiOsPrintf ("}\n");
}
