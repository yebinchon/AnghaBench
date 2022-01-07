
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_OPTION_ERROR (char*,int ) ;
 char* AcpiGbl_Optarg ;
 size_t AcpiGbl_Optind ;
 int CurrentCharPtr ;

int
AcpiGetoptArgument (
    int argc,
    char **argv)
{

    AcpiGbl_Optind--;
    CurrentCharPtr++;

    if (argv[AcpiGbl_Optind][(int) (CurrentCharPtr+1)] != '\0')
    {
        AcpiGbl_Optarg = &argv[AcpiGbl_Optind++][(int) (CurrentCharPtr+1)];
    }
    else if (++AcpiGbl_Optind >= argc)
    {
        ACPI_OPTION_ERROR ("\nOption requires an argument", 0);

        CurrentCharPtr = 1;
        return (-1);
    }
    else
    {
        AcpiGbl_Optarg = argv[AcpiGbl_Optind++];
    }

    CurrentCharPtr = 1;
    return (0);
}
