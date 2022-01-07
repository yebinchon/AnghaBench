
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AcpiDmTableInfoEinj0 ;
 int AcpiDmTableInfoErst ;
 int DtCompileTwoSubtables (void**,int ,int ) ;

ACPI_STATUS
DtCompileErst (
    void **List)
{
    ACPI_STATUS Status;


    Status = DtCompileTwoSubtables (List,
        AcpiDmTableInfoErst, AcpiDmTableInfoEinj0);
    return (Status);
}
