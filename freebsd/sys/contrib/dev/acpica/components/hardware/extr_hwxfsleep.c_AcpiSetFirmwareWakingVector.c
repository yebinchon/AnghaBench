
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_PHYSICAL_ADDRESS ;


 int ACPI_FUNCTION_TRACE (int (*) (int ,int )) ;
 int AE_OK ;
 scalar_t__ AcpiGbl_FACS ;
 int AcpiHwSetFirmwareWakingVector (scalar_t__,int ,int ) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiSetFirmwareWakingVector (
    ACPI_PHYSICAL_ADDRESS PhysicalAddress,
    ACPI_PHYSICAL_ADDRESS PhysicalAddress64)
{

    ACPI_FUNCTION_TRACE (AcpiSetFirmwareWakingVector);

    if (AcpiGbl_FACS)
    {
        (void) AcpiHwSetFirmwareWakingVector (AcpiGbl_FACS,
            PhysicalAddress, PhysicalAddress64);
    }

    return_ACPI_STATUS (AE_OK);
}
