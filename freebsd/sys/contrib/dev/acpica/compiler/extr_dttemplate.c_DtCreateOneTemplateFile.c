
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int Template; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_DMTABLE_DATA ;


 scalar_t__ ACPI_NAMESEG_SIZE ;
 int AE_ERROR ;
 TYPE_1__* AcpiDmGetTableData (char*) ;
 int AcpiUtIsSpecialTable (char*) ;
 int DtCreateOneTemplate (char*,int ,TYPE_1__ const*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static ACPI_STATUS
DtCreateOneTemplateFile (
    char *Signature,
    UINT32 TableCount)
{
    const ACPI_DMTABLE_DATA *TableData;
    ACPI_STATUS Status;
    if (strlen (Signature) != ACPI_NAMESEG_SIZE)
    {
        fprintf (stderr,
            "%s: Invalid ACPI table signature "
            "(length must be 4 characters)\n", Signature);
        return (AE_ERROR);
    }





    if (!strcmp (Signature, "MADT"))
    {
        Signature = "APIC";
    }
    else if (!strcmp (Signature, "FADT"))
    {
        Signature = "FACP";
    }



    TableData = AcpiDmGetTableData (Signature);
    if (TableData)
    {
        if (!TableData->Template)
        {
            fprintf (stderr, "%4.4s: No template available\n", Signature);
            return (AE_ERROR);
        }
    }
    else if (!AcpiUtIsSpecialTable (Signature))
    {
        fprintf (stderr,
            "%4.4s: Unrecognized ACPI table signature\n", Signature);
        return (AE_ERROR);
    }

    Status = DtCreateOneTemplate (Signature, TableCount, TableData);
    return (Status);
}
