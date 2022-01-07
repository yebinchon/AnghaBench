
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 char* ACPI_COMMON_SIGNON (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ASL_COMPILER_NAME ;
 int AcpiGbl_DisasmFlag ;
 size_t AcpiGbl_Optind ;
 int AslDoOptions (int,char**,int ) ;
 scalar_t__ AslGbl_DoSignon ;
 scalar_t__ AslGbl_DoTemplates ;
 scalar_t__ AslGbl_IgnoreErrors ;
 int DtCreateTemplates (char**) ;
 int FALSE ;
 int TRUE ;
 int Usage () ;
 int exit (int) ;
 int printf (char*) ;

int
AslCommandLine (
    int argc,
    char **argv)
{
    int BadCommandLine = 0;
    ACPI_STATUS Status;




    if (argc < 2)
    {
        Usage ();
        exit (1);
    }



    BadCommandLine = AslDoOptions (argc, argv, FALSE);

    if (AslGbl_DoTemplates)
    {
        Status = DtCreateTemplates (argv);
        if (ACPI_FAILURE (Status))
        {
            exit (-1);
        }
        exit (1);
    }



    if (!argv[AcpiGbl_Optind] &&
        !AcpiGbl_DisasmFlag)
    {
        printf ("Missing input filename\n");
        BadCommandLine = TRUE;
    }

    if (AslGbl_DoSignon)
    {
        printf (ACPI_COMMON_SIGNON (ASL_COMPILER_NAME));
        if (AslGbl_IgnoreErrors)
        {
            printf ("Ignoring all errors, forcing AML file generation\n\n");
        }
    }

    if (BadCommandLine)
    {
        printf ("Use -h option for help information\n");
        exit (1);
    }

    return (AcpiGbl_Optind);
}
