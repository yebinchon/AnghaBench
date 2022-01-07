
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int AcpiDmTableInfoCpep ;
 int AcpiDmTableInfoCpep0 ;
 int DtCompileTwoSubtables (void**,int ,int ) ;

ACPI_STATUS
DtCompileCpep (
    void **List)
{
    ACPI_STATUS Status;


    Status = DtCompileTwoSubtables (List,
        AcpiDmTableInfoCpep, AcpiDmTableInfoCpep0);
    return (Status);
}
