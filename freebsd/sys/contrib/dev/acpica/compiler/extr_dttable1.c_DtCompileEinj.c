
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AcpiDmTableInfoEinj ;
 int AcpiDmTableInfoEinj0 ;
 int DtCompileTwoSubtables (void**,int ,int ) ;

ACPI_STATUS
DtCompileEinj (
    void **List)
{
    ACPI_STATUS Status;


    Status = DtCompileTwoSubtables (List,
        AcpiDmTableInfoEinj, AcpiDmTableInfoEinj0);
    return (Status);
}
