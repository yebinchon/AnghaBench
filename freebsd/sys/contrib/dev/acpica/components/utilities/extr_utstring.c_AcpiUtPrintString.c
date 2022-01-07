
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef size_t UINT16 ;
typedef int INT32 ;


 int AcpiOsPrintf (char*,...) ;
 int isprint (int) ;

void
AcpiUtPrintString (
    char *String,
    UINT16 MaxLength)
{
    UINT32 i;


    if (!String)
    {
        AcpiOsPrintf ("<\"NULL STRING PTR\">");
        return;
    }

    AcpiOsPrintf ("\"");
    for (i = 0; (i < MaxLength) && String[i]; i++)
    {


        switch (String[i])
        {
        case 0x07:

            AcpiOsPrintf ("\\a");
            break;

        case 0x08:

            AcpiOsPrintf ("\\b");
            break;

        case 0x0C:

            AcpiOsPrintf ("\\f");
            break;

        case 0x0A:

            AcpiOsPrintf ("\\n");
            break;

        case 0x0D:

            AcpiOsPrintf ("\\r");
            break;

        case 0x09:

            AcpiOsPrintf ("\\t");
            break;

        case 0x0B:

            AcpiOsPrintf ("\\v");
            break;

        case '\'':
        case '\"':
        case '\\':

            AcpiOsPrintf ("\\%c", (int) String[i]);
            break;

        default:



            if (isprint ((int) String[i]))
            {


                AcpiOsPrintf ("%c", (int) String[i]);
            }
            else
            {


                AcpiOsPrintf ("\\x%2.2X", (INT32) String[i]);
            }
            break;
        }
    }

    AcpiOsPrintf ("\"");

    if (i == MaxLength && String[i])
    {
        AcpiOsPrintf ("...");
    }
}
