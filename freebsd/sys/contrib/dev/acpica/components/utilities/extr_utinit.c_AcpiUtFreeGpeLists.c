
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* Next; struct TYPE_5__* RegisterInfo; struct TYPE_5__* EventInfo; struct TYPE_5__* GpeBlockListHead; } ;
typedef TYPE_1__ ACPI_GPE_XRUPT_INFO ;
typedef TYPE_1__ ACPI_GPE_BLOCK_INFO ;


 int ACPI_FREE (TYPE_1__*) ;
 TYPE_1__* AcpiGbl_GpeXruptListHead ;

__attribute__((used)) static void
AcpiUtFreeGpeLists (
    void)
{
    ACPI_GPE_BLOCK_INFO *GpeBlock;
    ACPI_GPE_BLOCK_INFO *NextGpeBlock;
    ACPI_GPE_XRUPT_INFO *GpeXruptInfo;
    ACPI_GPE_XRUPT_INFO *NextGpeXruptInfo;




    GpeXruptInfo = AcpiGbl_GpeXruptListHead;
    while (GpeXruptInfo)
    {
        GpeBlock = GpeXruptInfo->GpeBlockListHead;
        while (GpeBlock)
        {
            NextGpeBlock = GpeBlock->Next;
            ACPI_FREE (GpeBlock->EventInfo);
            ACPI_FREE (GpeBlock->RegisterInfo);
            ACPI_FREE (GpeBlock);

            GpeBlock = NextGpeBlock;
        }
        NextGpeXruptInfo = GpeXruptInfo->Next;
        ACPI_FREE (GpeXruptInfo);
        GpeXruptInfo = NextGpeXruptInfo;
    }
}
