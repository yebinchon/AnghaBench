
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_7__ {int DisableForDispatch; scalar_t__ RuntimeCount; TYPE_1__* RegisterInfo; } ;
struct TYPE_6__ {int MaskForRun; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_2__ ACPI_GPE_EVENT_INFO ;


 int ACPI_CLEAR_BIT (int,int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISABLE ;
 int ACPI_GPE_ENABLE ;
 int ACPI_SET_BIT (int,int ) ;
 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AcpiHwGetGpeRegisterBit (TYPE_2__*) ;
 int AcpiHwLowSetGpe (TYPE_2__*,int ) ;
 int EvMaskGpe ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvMaskGpe (
    ACPI_GPE_EVENT_INFO *GpeEventInfo,
    BOOLEAN IsMasked)
{
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    UINT32 RegisterBit;


    ACPI_FUNCTION_TRACE (EvMaskGpe);


    GpeRegisterInfo = GpeEventInfo->RegisterInfo;
    if (!GpeRegisterInfo)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }

    RegisterBit = AcpiHwGetGpeRegisterBit (GpeEventInfo);



    if (IsMasked)
    {
        if (RegisterBit & GpeRegisterInfo->MaskForRun)
        {
            return_ACPI_STATUS (AE_BAD_PARAMETER);
        }

        (void) AcpiHwLowSetGpe (GpeEventInfo, ACPI_GPE_DISABLE);
        ACPI_SET_BIT (GpeRegisterInfo->MaskForRun, (UINT8) RegisterBit);
    }
    else
    {
        if (!(RegisterBit & GpeRegisterInfo->MaskForRun))
        {
            return_ACPI_STATUS (AE_BAD_PARAMETER);
        }

        ACPI_CLEAR_BIT (GpeRegisterInfo->MaskForRun, (UINT8) RegisterBit);
        if (GpeEventInfo->RuntimeCount &&
            !GpeEventInfo->DisableForDispatch)
        {
            (void) AcpiHwLowSetGpe (GpeEventInfo, ACPI_GPE_ENABLE);
        }
    }

    return_ACPI_STATUS (AE_OK);
}
