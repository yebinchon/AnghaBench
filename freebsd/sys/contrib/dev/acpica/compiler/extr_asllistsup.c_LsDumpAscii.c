
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef size_t UINT32 ;


 int FlPrintFile (size_t,char*,...) ;
 scalar_t__ isprint (int ) ;

void
LsDumpAscii (
    UINT32 FileId,
    UINT32 Count,
    UINT8 *Buffer)
{
    UINT8 BufChar;
    UINT32 i;


    FlPrintFile (FileId, "    \"");
    for (i = 0; i < Count; i++)
    {
        BufChar = Buffer[i];
        if (isprint (BufChar))
        {
            FlPrintFile (FileId, "%c", BufChar);
        }
        else
        {


            FlPrintFile (FileId, ".");
        }
    }

    FlPrintFile (FileId, "\"");
}
