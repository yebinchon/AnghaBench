
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {int EnableAddress; int EnableMask; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_REGISTER_INFO ;


 int AcpiHwWrite (int ,int *) ;

__attribute__((used)) static ACPI_STATUS
AcpiHwGpeEnableWrite (
    UINT8 EnableMask,
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo)
{
    ACPI_STATUS Status;


    GpeRegisterInfo->EnableMask = EnableMask;

    Status = AcpiHwWrite (EnableMask, &GpeRegisterInfo->EnableAddress);
    return (Status);
}
