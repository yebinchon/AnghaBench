
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_EVALUATE_INFO ;


 int ACPI_SORT_ASCENDING ;
 int AcpiNsCheckSortedList (int *,int *,int ,int,int,int ,char*) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsRepair_ALR (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_STATUS Status;


    Status = AcpiNsCheckSortedList (Info, ReturnObject, 0, 2, 1,
        ACPI_SORT_ASCENDING, "AmbientIlluminance");

    return (Status);
}
