
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {struct TYPE_3__* Next; int Context; int (* Address ) (int ) ;} ;
typedef TYPE_1__ ACPI_SCI_HANDLER_INFO ;
typedef int ACPI_CPU_FLAGS ;


 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_INTERRUPT_NOT_HANDLED ;
 int AcpiGbl_GpeLock ;
 TYPE_1__* AcpiGbl_SciHandlerList ;
 int AcpiOsAcquireLock (int ) ;
 int AcpiOsReleaseLock (int ,int ) ;
 int EvSciDispatch ;
 int stub1 (int ) ;

UINT32
AcpiEvSciDispatch (
    void)
{
    ACPI_SCI_HANDLER_INFO *SciHandler;
    ACPI_CPU_FLAGS Flags;
    UINT32 IntStatus = ACPI_INTERRUPT_NOT_HANDLED;


    ACPI_FUNCTION_NAME (EvSciDispatch);




    if (!AcpiGbl_SciHandlerList)
    {
        return (IntStatus);
    }

    Flags = AcpiOsAcquireLock (AcpiGbl_GpeLock);



    SciHandler = AcpiGbl_SciHandlerList;
    while (SciHandler)
    {


        IntStatus |= SciHandler->Address (
            SciHandler->Context);

        SciHandler = SciHandler->Next;
    }

    AcpiOsReleaseLock (AcpiGbl_GpeLock, Flags);
    return (IntStatus);
}
