
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Signature; scalar_t__ Template; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_DMTABLE_DATA ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_RSDP_NAME ;
 scalar_t__ ACPI_SIG_DSDT ;
 scalar_t__ ACPI_SIG_FACS ;
 scalar_t__ ACPI_SIG_OSDT ;
 scalar_t__ ACPI_SIG_SSDT ;
 int AE_OK ;
 TYPE_1__* AcpiDmTableData ;
 int DtCreateOneTemplate (scalar_t__,int ,TYPE_1__ const*) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static ACPI_STATUS
DtCreateAllTemplates (
    void)
{
    const ACPI_DMTABLE_DATA *TableData;
    ACPI_STATUS Status;


    fprintf (stderr, "Creating all supported Template files\n");



    for (TableData = AcpiDmTableData; TableData->Signature; TableData++)
    {


        if (TableData->Template)
        {
            Status = DtCreateOneTemplate (TableData->Signature,
                0, TableData);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
        }
    }






    Status = DtCreateOneTemplate (ACPI_SIG_DSDT, 0, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = DtCreateOneTemplate (ACPI_SIG_SSDT, 0, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = DtCreateOneTemplate (ACPI_SIG_OSDT, 0, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = DtCreateOneTemplate (ACPI_SIG_FACS, 0, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    Status = DtCreateOneTemplate (ACPI_RSDP_NAME, 0, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    return (AE_OK);
}
