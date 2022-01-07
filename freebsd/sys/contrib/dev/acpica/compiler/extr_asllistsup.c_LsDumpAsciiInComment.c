
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UINT8 ;
typedef size_t UINT32 ;


 int FlPrintFile (size_t,char*,...) ;
 scalar_t__ isprint (char) ;

void
LsDumpAsciiInComment (
    UINT32 FileId,
    UINT32 Count,
    UINT8 *Buffer)
{
    UINT8 BufChar = 0;
    UINT8 LastChar;
    UINT32 i;


    FlPrintFile (FileId, "    \"");
    for (i = 0; i < Count; i++)
    {
        LastChar = BufChar;
        BufChar = Buffer[i];

        if (isprint (BufChar))
        {


            if (((LastChar == '*') && (BufChar == '/')) ||
                ((LastChar == '/') && (BufChar == '*')))
            {


                FlPrintFile (FileId, " ");
            }

            FlPrintFile (FileId, "%c", BufChar);
        }
        else
        {


            FlPrintFile (FileId, ".");
        }
    }

    FlPrintFile (FileId, "\"");
}
