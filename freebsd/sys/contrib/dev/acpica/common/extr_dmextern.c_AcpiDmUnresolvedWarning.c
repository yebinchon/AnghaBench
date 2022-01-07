
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;


 int AcpiGbl_ExternalFileList ;
 int AcpiGbl_NumExternalMethods ;
 int AcpiGbl_ResolvedExternalMethods ;
 int AcpiOsPrintf (char*,char*,char*,char*,...) ;
 char* ExternalWarningPart1 ;
 char* ExternalWarningPart2 ;
 char* ExternalWarningPart3 ;
 int ExternalWarningPart4 ;
 int fprintf (int ,char*,char*,char*,...) ;
 int sprintf (char*,char*,char*,char*,...) ;
 int stderr ;

void
AcpiDmUnresolvedWarning (
    UINT8 Type)
{
    char *Format;
    char Pad[] = "     *";
    char NoPad[] = "";


    if (!AcpiGbl_NumExternalMethods)
    {
        return;
    }

    if (AcpiGbl_NumExternalMethods == AcpiGbl_ResolvedExternalMethods)
    {
        return;
    }

    Format = Type ? Pad : NoPad;

    sprintf (ExternalWarningPart1,
        "%s iASL Warning: There %s %u external control method%s found during\n"
        "%s disassembly, but only %u %s resolved (%u unresolved). Additional\n"
        "%s ACPI tables may be required to properly disassemble the code. This\n"
        "%s resulting disassembler output file may not compile because the\n"
        "%s disassembler did not know how many arguments to assign to the\n"
        "%s unresolved methods. Note: SSDTs can be dynamically loaded at\n"
        "%s runtime and may or may not be available via the host OS.\n",
        Format, (AcpiGbl_NumExternalMethods != 1 ? "were" : "was"),
        AcpiGbl_NumExternalMethods, (AcpiGbl_NumExternalMethods != 1 ? "s" : ""),
        Format, AcpiGbl_ResolvedExternalMethods,
        (AcpiGbl_ResolvedExternalMethods != 1 ? "were" : "was"),
        (AcpiGbl_NumExternalMethods - AcpiGbl_ResolvedExternalMethods),
        Format, Format, Format, Format, Format);

    sprintf (ExternalWarningPart2,
        "%s To specify the tables needed to resolve external control method\n"
        "%s references, the -e option can be used to specify the filenames.\n"
        "%s Example iASL invocations:\n"
        "%s     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml\n"
        "%s     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml\n"
        "%s     iasl -e ssdt*.aml -d dsdt.aml\n",
        Format, Format, Format, Format, Format, Format);

    sprintf (ExternalWarningPart3,
        "%s In addition, the -fe option can be used to specify a file containing\n"
        "%s control method external declarations with the associated method\n"
        "%s argument counts. Each line of the file must be of the form:\n"
        "%s     External (<method pathname>, MethodObj, <argument count>)\n"
        "%s Invocation:\n"
        "%s     iasl -fe refs.txt -d dsdt.aml\n",
        Format, Format, Format, Format, Format, Format);

    sprintf (ExternalWarningPart4,
        "%s The following methods were unresolved and many not compile properly\n"
        "%s because the disassembler had to guess at the number of arguments\n"
        "%s required for each:\n",
        Format, Format, Format);

    if (Type)
    {
        if (!AcpiGbl_ExternalFileList)
        {


           AcpiOsPrintf ("    /*\n%s     *\n%s     *\n%s     *\n%s     */\n",
               ExternalWarningPart1, ExternalWarningPart2, ExternalWarningPart3,
               ExternalWarningPart4);
        }
        else
        {


            AcpiOsPrintf ("    /*\n%s     *\n%s     *\n%s     */\n",
               ExternalWarningPart1, ExternalWarningPart3, ExternalWarningPart4);
        }
    }
    else
    {
        if (!AcpiGbl_ExternalFileList)
        {


            fprintf (stderr, "\n%s\n%s\n%s\n",
               ExternalWarningPart1, ExternalWarningPart2, ExternalWarningPart3);
        }
        else
        {


            fprintf (stderr, "\n%s\n%s\n",
               ExternalWarningPart1, ExternalWarningPart3);
        }
    }
}
