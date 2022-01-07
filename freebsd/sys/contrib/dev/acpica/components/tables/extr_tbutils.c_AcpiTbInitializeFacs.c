
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Facs; scalar_t__ XFacs; } ;
typedef int ACPI_TABLE_FACS ;
typedef int ACPI_STATUS ;


 int ACPI_CAST_INDIRECT_PTR (int ,int **) ;
 int ACPI_TABLE_HEADER ;
 int AE_OK ;
 int * AcpiGbl_FACS ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiGbl_FacsIndex ;
 scalar_t__ AcpiGbl_ReducedHardware ;
 int AcpiGbl_Use32BitFacsAddresses ;
 int AcpiGbl_XFacsIndex ;
 int AcpiGetTableByIndex (int ,int ) ;

ACPI_STATUS
AcpiTbInitializeFacs (
    void)
{
    ACPI_TABLE_FACS *Facs;




    if (AcpiGbl_ReducedHardware)
    {
        AcpiGbl_FACS = ((void*)0);
        return (AE_OK);
    }
    else if (AcpiGbl_FADT.XFacs &&
         (!AcpiGbl_FADT.Facs || !AcpiGbl_Use32BitFacsAddresses))
    {
        (void) AcpiGetTableByIndex (AcpiGbl_XFacsIndex,
            ACPI_CAST_INDIRECT_PTR (ACPI_TABLE_HEADER, &Facs));
        AcpiGbl_FACS = Facs;
    }
    else if (AcpiGbl_FADT.Facs)
    {
        (void) AcpiGetTableByIndex (AcpiGbl_FacsIndex,
            ACPI_CAST_INDIRECT_PTR (ACPI_TABLE_HEADER, &Facs));
        AcpiGbl_FACS = Facs;
    }



    return (AE_OK);
}
