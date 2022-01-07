
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ASL_STRING_BUFFER_SIZE ;
 int AcpiGbl_Opterr ;
 int AcpiGbl_Optind ;
 int AslDoOptions (int,char**,int ) ;
 char* AslGbl_StringBuffer ;
 char* AslGbl_StringBuffer2 ;
 int AslMergeOptionTokens (char*,char*) ;
 int TRUE ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int ,int *) ;
 int * fopen (char*,char*) ;
 int printf (char*,char*,char*) ;
 char* strerror (int ) ;

__attribute__((used)) static int
AslDoResponseFile (
    char *Filename)
{
    char *argv = AslGbl_StringBuffer2;
    FILE *ResponseFile;
    int OptStatus = 0;
    int Opterr;
    int Optind;


    ResponseFile = fopen (Filename, "r");
    if (!ResponseFile)
    {
        printf ("Could not open command file %s, %s\n",
            Filename, strerror (errno));
        return (-1);
    }



    Opterr = AcpiGbl_Opterr;
    Optind = AcpiGbl_Optind;





    while (fgets (AslGbl_StringBuffer, ASL_STRING_BUFFER_SIZE, ResponseFile))
    {


        AslMergeOptionTokens (AslGbl_StringBuffer, AslGbl_StringBuffer2);



        AcpiGbl_Opterr = 0;
        AcpiGbl_Optind = 0;

        OptStatus = AslDoOptions (1, &argv, TRUE);
        if (OptStatus)
        {
            printf ("Invalid option in command file %s: %s\n",
                Filename, AslGbl_StringBuffer);
            break;
        }
    }



    AcpiGbl_Opterr = Opterr;
    AcpiGbl_Optind = Optind;

    fclose (ResponseFile);
    return (OptStatus);
}
