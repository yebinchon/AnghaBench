
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int ASL_FILE_XREF_OUTPUT ;
 int FlPrintFile (int ,char*,...) ;
 scalar_t__ strlen (char*) ;

void
OtPrintHeaders (
    char *Message)
{
    UINT32 Length;


    Length = strlen (Message);

    FlPrintFile (ASL_FILE_XREF_OUTPUT, "\n\n%s\n", Message);
    while (Length)
    {
        FlPrintFile (ASL_FILE_XREF_OUTPUT, "-");
        Length--;
    }

    FlPrintFile (ASL_FILE_XREF_OUTPUT, "\n\nLineno   %-40s Description\n",
        "Full Pathname");
}
