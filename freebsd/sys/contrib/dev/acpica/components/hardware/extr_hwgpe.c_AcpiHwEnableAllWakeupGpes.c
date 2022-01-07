
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiEvWalkGpeList (int ,int *) ;
 int AcpiHwEnableWakeupGpeBlock ;
 int HwEnableAllWakeupGpes ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwEnableAllWakeupGpes (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (HwEnableAllWakeupGpes);


    Status = AcpiEvWalkGpeList (AcpiHwEnableWakeupGpeBlock, ((void*)0));
    return_ACPI_STATUS (Status);
}
