
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_6__ {TYPE_1__* RegisterInfo; int Flags; } ;
struct TYPE_5__ {int EnableForRun; int MaskForRun; int EnableForWake; int StatusAddress; int EnableAddress; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_2__ ACPI_GPE_EVENT_INFO ;
typedef int ACPI_EVENT_STATUS ;


 int ACPI_EVENT_FLAG_ENABLED ;
 int ACPI_EVENT_FLAG_ENABLE_SET ;
 int ACPI_EVENT_FLAG_HAS_HANDLER ;
 int ACPI_EVENT_FLAG_MASKED ;
 int ACPI_EVENT_FLAG_STATUS_SET ;
 int ACPI_EVENT_FLAG_WAKE_ENABLED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GPE_DISPATCH_NONE ;
 scalar_t__ ACPI_GPE_DISPATCH_TYPE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int AcpiHwGetGpeRegisterBit (TYPE_2__*) ;
 int AcpiHwRead (int*,int *) ;

ACPI_STATUS
AcpiHwGetGpeStatus (
    ACPI_GPE_EVENT_INFO *GpeEventInfo,
    ACPI_EVENT_STATUS *EventStatus)
{
    UINT64 InByte;
    UINT32 RegisterBit;
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    ACPI_EVENT_STATUS LocalEventStatus = 0;
    ACPI_STATUS Status;


    ACPI_FUNCTION_ENTRY ();


    if (!EventStatus)
    {
        return (AE_BAD_PARAMETER);
    }



    if (ACPI_GPE_DISPATCH_TYPE (GpeEventInfo->Flags) !=
        ACPI_GPE_DISPATCH_NONE)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_HAS_HANDLER;
    }



    GpeRegisterInfo = GpeEventInfo->RegisterInfo;



    RegisterBit = AcpiHwGetGpeRegisterBit (GpeEventInfo);



    if (RegisterBit & GpeRegisterInfo->EnableForRun)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_ENABLED;
    }



    if (RegisterBit & GpeRegisterInfo->MaskForRun)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_MASKED;
    }



    if (RegisterBit & GpeRegisterInfo->EnableForWake)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_WAKE_ENABLED;
    }



    Status = AcpiHwRead (&InByte, &GpeRegisterInfo->EnableAddress);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    if (RegisterBit & InByte)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_ENABLE_SET;
    }



    Status = AcpiHwRead (&InByte, &GpeRegisterInfo->StatusAddress);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    if (RegisterBit & InByte)
    {
        LocalEventStatus |= ACPI_EVENT_FLAG_STATUS_SET;
    }



    (*EventStatus) = LocalEventStatus;
    return (AE_OK);
}
