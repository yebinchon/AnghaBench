
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef size_t ACPI_SIZE ;


 int FlPrintFile (int,char*,...) ;
 scalar_t__ isprint (int ) ;

__attribute__((used)) static void
DtDumpBuffer (
    UINT32 FileId,
    UINT8 *Buffer,
    UINT32 Offset,
    UINT32 Length)
{
    UINT32 i;
    UINT32 j;
    UINT8 BufChar;


    FlPrintFile (FileId, "Output: [%3.3Xh %4.4d %3d] ",
        Offset, Offset, Length);

    i = 0;
    while (i < Length)
    {
        if (i >= 16)
        {
            FlPrintFile (FileId, "%24s", "");
        }



        for (j = 0; j < 16;)
        {
            if (i + j >= Length)
            {


                FlPrintFile (FileId, "   ");
                j++;
                continue;
            }

            FlPrintFile (FileId, "%02X ", Buffer[i+j]);
            j++;
        }

        FlPrintFile (FileId, " ");
        for (j = 0; j < 16; j++)
        {
            if (i + j >= Length)
            {
                FlPrintFile (FileId, "\n\n");
                return;
            }

            BufChar = Buffer[(ACPI_SIZE) i + j];
            if (isprint (BufChar))
            {
                FlPrintFile (FileId, "%c", BufChar);
            }
            else
            {
                FlPrintFile (FileId, ".");
            }
        }



        FlPrintFile (FileId, "\n");
        i += 16;
    }

    FlPrintFile (FileId, "\n\n");
}
