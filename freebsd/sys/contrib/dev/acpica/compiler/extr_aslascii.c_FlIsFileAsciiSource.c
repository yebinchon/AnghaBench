
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int Line; scalar_t__ Offset; } ;
typedef int FILE ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ASL_FILE_STATUS ;
typedef int ACPI_STATUS ;


 int ACPI_IS_ASCII (char) ;
 int AE_BAD_CHARACTER ;
 int AE_ERROR ;
 int AE_OK ;
 int ASL_ERROR ;
 int ASL_MSG_NON_ASCII ;
 int AcpiOsPrintf (char*,int,...) ;
 int AslError (int ,int ,int *,char*) ;
 scalar_t__ FALSE ;
 int FlConsumeAnsiComment (int *,TYPE_1__*) ;
 int FlConsumeNewComment (int *,TYPE_1__*) ;
 scalar_t__ TRUE ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,int) ;
 int fread (char*,int,int,int *) ;
 int isprint (char) ;
 int isspace (char) ;
 int perror (char*) ;
 int stderr ;

ACPI_STATUS
FlIsFileAsciiSource (
    char *Filename,
    BOOLEAN DisplayErrors)
{
    UINT8 Byte;
    UINT32 BadBytes = 0;
    BOOLEAN OpeningComment = FALSE;
    ASL_FILE_STATUS Status;
    FILE *Handle;




    Handle = fopen (Filename, "rb");
    if (!Handle)
    {
        perror ("Could not open input file");
        return (AE_ERROR);
    }

    Status.Line = 1;
    Status.Offset = 0;



    while (fread (&Byte, 1, 1, Handle) == 1)
    {


        if (OpeningComment)
        {


            if (Byte == '*')
            {
                FlConsumeAnsiComment (Handle, &Status);
            }

            if (Byte == '/')
            {
                FlConsumeNewComment (Handle, &Status);
            }



            OpeningComment = FALSE;
        }
        else if (Byte == '/')
        {
            OpeningComment = TRUE;
        }



        if (!ACPI_IS_ASCII (Byte))
        {
            if ((BadBytes < 10) && (DisplayErrors))
            {
                AcpiOsPrintf (
                    "Found non-ASCII character in source text: "
                    "0x%2.2X in line %u, file offset 0x%2.2X\n",
                    Byte, Status.Line, Status.Offset);
            }
            BadBytes++;
        }



        else if (!isprint (Byte) && !isspace (Byte))
        {
            if ((BadBytes < 10) && (DisplayErrors))
            {
                AcpiOsPrintf (
                    "Found invalid character in source text: "
                    "0x%2.2X in line %u, file offset 0x%2.2X\n",
                    Byte, Status.Line, Status.Offset);
            }
            BadBytes++;
        }



        if (Byte == 0x0A)
        {
            Status.Line++;
        }

        Status.Offset++;
    }

    fclose (Handle);



    if (BadBytes)
    {
        fprintf (stderr,
            "File appears to be binary: found %u non-ASCII characters, disassembling\n",
            BadBytes);
        if (DisplayErrors)
        {
            AcpiOsPrintf (
                "Total %u invalid characters found in input source text, "
                "could be a binary file\n", BadBytes);
            AslError (ASL_ERROR, ASL_MSG_NON_ASCII, ((void*)0), Filename);
        }

        return (AE_BAD_CHARACTER);
    }



    return (AE_OK);
}
