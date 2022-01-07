
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* GpeBlockListHead; } ;
struct TYPE_11__ {struct TYPE_11__* EventInfo; struct TYPE_11__* RegisterInfo; scalar_t__ GpeCount; TYPE_2__* Previous; TYPE_1__* Next; TYPE_4__* XruptBlock; } ;
struct TYPE_10__ {TYPE_1__* Next; } ;
struct TYPE_9__ {TYPE_2__* Previous; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_GPE_BLOCK_INFO ;
typedef int ACPI_CPU_FLAGS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_3__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_EVENTS ;
 int AcpiCurrentGpeCount ;
 int AcpiEvDeleteGpeXrupt (TYPE_4__*) ;
 int AcpiGbl_GpeLock ;
 int AcpiHwDisableGpeBlock (TYPE_4__*,TYPE_3__*,int *) ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int EvInstallGpeBlock ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvDeleteGpeBlock (
    ACPI_GPE_BLOCK_INFO *GpeBlock)
{
    ACPI_STATUS Status;
    ACPI_CPU_FLAGS Flags;


    ACPI_FUNCTION_TRACE (EvInstallGpeBlock);


    Status = AcpiUtAcquireMutex (ACPI_MTX_EVENTS);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    Status = AcpiHwDisableGpeBlock (GpeBlock->XruptBlock, GpeBlock, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    if (!GpeBlock->Previous && !GpeBlock->Next)
    {


        Status = AcpiEvDeleteGpeXrupt (GpeBlock->XruptBlock);
        if (ACPI_FAILURE (Status))
        {
            goto UnlockAndExit;
        }
    }
    else
    {


        Flags = AcpiOsAcquireLock (AcpiGbl_GpeLock);
        if (GpeBlock->Previous)
        {
            GpeBlock->Previous->Next = GpeBlock->Next;
        }
        else
        {
            GpeBlock->XruptBlock->GpeBlockListHead = GpeBlock->Next;
        }

        if (GpeBlock->Next)
        {
            GpeBlock->Next->Previous = GpeBlock->Previous;
        }

        AcpiOsReleaseLock (AcpiGbl_GpeLock, Flags);
    }

    AcpiCurrentGpeCount -= GpeBlock->GpeCount;



    ACPI_FREE (GpeBlock->RegisterInfo);
    ACPI_FREE (GpeBlock->EventInfo);
    ACPI_FREE (GpeBlock);

UnlockAndExit:
    Status = AcpiUtReleaseMutex (ACPI_MTX_EVENTS);
    return_ACPI_STATUS (Status);
}
