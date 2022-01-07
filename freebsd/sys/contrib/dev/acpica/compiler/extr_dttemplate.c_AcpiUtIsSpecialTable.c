
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,int ) ;
 int ACPI_RSDP_NAME ;
 int ACPI_SIG_DSDT ;
 int ACPI_SIG_FACS ;
 int ACPI_SIG_OSDT ;
 int ACPI_SIG_SSDT ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AcpiUtIsSpecialTable (
    char *Signature)
{

    if (ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_DSDT) ||
        ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_OSDT) ||
        ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_SSDT) ||
        ACPI_COMPARE_NAMESEG (Signature, ACPI_SIG_FACS) ||
        ACPI_COMPARE_NAMESEG (Signature, ACPI_RSDP_NAME))
    {
        return (TRUE);
    }

    return (FALSE);
}
