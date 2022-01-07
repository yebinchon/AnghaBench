
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ACPI_DEFAULT_RESNAME ;
 int AcpiOsPrintf (char*,char*) ;
 scalar_t__ ResourceName ;

void
AcpiDmDescriptorName (
    void)
{

    if (ResourceName == ACPI_DEFAULT_RESNAME)
    {
        return;
    }

    AcpiOsPrintf ("%4.4s", (char *) &ResourceName);
}
