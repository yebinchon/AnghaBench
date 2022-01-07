
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_7__ {size_t RegisterCount; struct TYPE_7__* Next; int * EventInfo; TYPE_2__* RegisterInfo; int * Node; } ;
struct TYPE_6__ {int EnableForRun; int EnableForWake; int BaseGpeNumber; } ;
struct TYPE_5__ {TYPE_3__* GpeBlockListHead; } ;
typedef int ACPI_SIZE ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_1__ ACPI_GPE_XRUPT_INFO ;
typedef TYPE_2__ ACPI_GPE_REGISTER_INFO ;
typedef int ACPI_GPE_EVENT_INFO ;
typedef TYPE_3__ ACPI_GPE_BLOCK_INFO ;
typedef int ACPI_CPU_FLAGS ;


 int ACPI_DB_INTERRUPTS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_GPE_REGISTER_WIDTH ;
 size_t ACPI_INTERRUPT_NOT_HANDLED ;
 size_t AcpiEvDetectGpe (int *,int *,size_t) ;
 int AcpiGbl_GpeLock ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int EvGpeDetect ;

UINT32
AcpiEvGpeDetect (
    ACPI_GPE_XRUPT_INFO *GpeXruptList)
{
    ACPI_GPE_BLOCK_INFO *GpeBlock;
    ACPI_NAMESPACE_NODE *GpeDevice;
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    ACPI_GPE_EVENT_INFO *GpeEventInfo;
    UINT32 GpeNumber;
    UINT32 IntStatus = ACPI_INTERRUPT_NOT_HANDLED;
    ACPI_CPU_FLAGS Flags;
    UINT32 i;
    UINT32 j;


    ACPI_FUNCTION_NAME (EvGpeDetect);



    if (!GpeXruptList)
    {
        return (IntStatus);
    }






    Flags = AcpiOsAcquireLock (AcpiGbl_GpeLock);



    GpeBlock = GpeXruptList->GpeBlockListHead;
    while (GpeBlock)
    {
        GpeDevice = GpeBlock->Node;





        for (i = 0; i < GpeBlock->RegisterCount; i++)
        {


            GpeRegisterInfo = &GpeBlock->RegisterInfo[i];





            if (!(GpeRegisterInfo->EnableForRun |
                  GpeRegisterInfo->EnableForWake))
            {
                ACPI_DEBUG_PRINT ((ACPI_DB_INTERRUPTS,
                    "Ignore disabled registers for GPE %02X-%02X: "
                    "RunEnable=%02X, WakeEnable=%02X\n",
                    GpeRegisterInfo->BaseGpeNumber,
                    GpeRegisterInfo->BaseGpeNumber + (ACPI_GPE_REGISTER_WIDTH - 1),
                    GpeRegisterInfo->EnableForRun,
                    GpeRegisterInfo->EnableForWake));
                continue;
            }



            for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++)
            {


                GpeEventInfo = &GpeBlock->EventInfo[((ACPI_SIZE) i *
                    ACPI_GPE_REGISTER_WIDTH) + j];
                GpeNumber = j + GpeRegisterInfo->BaseGpeNumber;
                AcpiOsReleaseLock (AcpiGbl_GpeLock, Flags);
                IntStatus |= AcpiEvDetectGpe (
                    GpeDevice, GpeEventInfo, GpeNumber);
                Flags = AcpiOsAcquireLock (AcpiGbl_GpeLock);
            }
        }

        GpeBlock = GpeBlock->Next;
    }

    AcpiOsReleaseLock (AcpiGbl_GpeLock, Flags);
    return (IntStatus);
}
