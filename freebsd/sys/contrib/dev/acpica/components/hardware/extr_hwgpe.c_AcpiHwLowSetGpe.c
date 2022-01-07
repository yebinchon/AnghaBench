
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_6__ {TYPE_1__* RegisterInfo; } ;
struct TYPE_5__ {int EnableMask; int MaskForRun; int EnableAddress; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_2__ ACPI_GPE_EVENT_INFO ;


 int ACPI_CLEAR_BIT (int ,int) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;



 int ACPI_SET_BIT (int ,int) ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AcpiHwGetGpeRegisterBit (TYPE_2__*) ;
 int AcpiHwRead (int *,int *) ;
 int AcpiHwWrite (int ,int *) ;

ACPI_STATUS
AcpiHwLowSetGpe (
    ACPI_GPE_EVENT_INFO *GpeEventInfo,
    UINT32 Action)
{
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    ACPI_STATUS Status = AE_OK;
    UINT64 EnableMask;
    UINT32 RegisterBit;


    ACPI_FUNCTION_ENTRY ();




    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        return (AE_NOT_EXIST);
    }



    Status = AcpiHwRead (&EnableMask, &GpeRegisterInfo->EnableAddress);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    RegisterBit = AcpiHwGetGpeRegisterBit (GpeEventInfo);
    switch (Action)
    {
    case 130:



        if (!(RegisterBit & GpeRegisterInfo->EnableMask))
        {
            return (AE_BAD_PARAMETER);
        }



    case 128:

        ACPI_SET_BIT (EnableMask, RegisterBit);
        break;

    case 129:

        ACPI_CLEAR_BIT (EnableMask, RegisterBit);
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Invalid GPE Action, %u", Action));
        return (AE_BAD_PARAMETER);
    }

    if (!(RegisterBit & GpeRegisterInfo->MaskForRun))
    {


        Status = AcpiHwWrite (EnableMask, &GpeRegisterInfo->EnableAddress);
    }
    return (Status);
}
