
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 char* ACPI_SIG_DSDT ;
 int AE_LIMIT ;
 int AE_OK ;
 int AcpiGbl_Optind ;
 int AcpiTerminate () ;
 int AcpiUtStrupr (char*) ;
 int AdInitialize () ;
 int AslInitializeGlobals () ;
 int DtCreateAllTemplates () ;
 int DtCreateOneTemplateFile (char*,unsigned long) ;
 int UtDeleteLocalCaches () ;
 int fprintf (int ,char*,unsigned int) ;
 int stderr ;
 int strcmp (char*,char*) ;
 unsigned long strtoul (char*,char**,int ) ;

ACPI_STATUS
DtCreateTemplates (
    char **argv)
{
    char *Signature;
    char *End;
    unsigned long TableCount;
    ACPI_STATUS Status = AE_OK;


    AslInitializeGlobals ();

    Status = AdInitialize ();
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }







    if (AcpiGbl_Optind < 3)
    {
        Status = DtCreateOneTemplateFile (ACPI_SIG_DSDT, 0);
        goto Exit;
    }

    AcpiGbl_Optind--;
    Signature = argv[AcpiGbl_Optind];
    AcpiUtStrupr (Signature);




    TableCount = strtoul (Signature, &End, 0);
    if (Signature != End)
    {


        if (TableCount > 254)
        {
            fprintf (stderr, "%u SSDTs requested, maximum is 254\n",
                (unsigned int) TableCount);

            Status = AE_LIMIT;
            goto Exit;
        }

        Status = DtCreateOneTemplateFile (ACPI_SIG_DSDT, TableCount);
        goto Exit;
    }

    if (!strcmp (Signature, "ALL"))
    {


        Status = DtCreateAllTemplates ();
        goto Exit;
    }




    while (argv[AcpiGbl_Optind])
    {
        Signature = argv[AcpiGbl_Optind];
        AcpiUtStrupr (Signature);

        Status = DtCreateOneTemplateFile (Signature, 0);
        if (ACPI_FAILURE (Status))
        {
            goto Exit;
        }

        AcpiGbl_Optind++;
    }


Exit:


    (void) AcpiTerminate ();
    UtDeleteLocalCaches ();
    return (Status);
}
