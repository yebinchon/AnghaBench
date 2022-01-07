
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;





 int * AslGbl_AmlBuffer ;
 scalar_t__ AslGbl_CurrentAmlOffset ;
 scalar_t__ AslGbl_CurrentHexColumn ;
 int AslGbl_HexBytesWereWritten ;
 int FlPrintFile (int,char*,...) ;
 int FlWriteFile (int,char*,int) ;
 scalar_t__ HEX_LISTING_LINE_SIZE ;
 int LsDumpAscii (int,scalar_t__,int *) ;
 int LsDumpAsciiInComment (int,scalar_t__,int *) ;
 int TRUE ;

void
LsFlushListingBuffer (
    UINT32 FileId)
{
    UINT32 i;


    if (AslGbl_CurrentHexColumn == 0)
    {
        return;
    }



    switch (FileId)
    {
    case 128:

        for (i = 0; i < AslGbl_CurrentHexColumn; i++)
        {
            FlPrintFile (FileId, "%2.2X ", AslGbl_AmlBuffer[i]);
        }

        for (i = 0; i < ((HEX_LISTING_LINE_SIZE - AslGbl_CurrentHexColumn) * 3); i++)
        {
            FlWriteFile (FileId, ".", 1);
        }



        LsDumpAscii (FileId, AslGbl_CurrentHexColumn, AslGbl_AmlBuffer);
        break;


    case 130:

        for (i = 0; i < AslGbl_CurrentHexColumn; i++)
        {
            if (i > 0)
            {
                FlPrintFile (FileId, ",");
            }

            FlPrintFile (FileId, "0%2.2Xh", AslGbl_AmlBuffer[i]);
        }

        for (i = 0; i < ((HEX_LISTING_LINE_SIZE - AslGbl_CurrentHexColumn) * 5); i++)
        {
            FlWriteFile (FileId, " ", 1);
        }

        FlPrintFile (FileId, "  ;%8.8X",
            AslGbl_CurrentAmlOffset - HEX_LISTING_LINE_SIZE);



        LsDumpAscii (FileId, AslGbl_CurrentHexColumn, AslGbl_AmlBuffer);
        break;


    case 129:

        for (i = 0; i < AslGbl_CurrentHexColumn; i++)
        {
            FlPrintFile (FileId, "0x%2.2X,", AslGbl_AmlBuffer[i]);
        }



        for (i = 0; i < ((HEX_LISTING_LINE_SIZE - AslGbl_CurrentHexColumn) * 5); i++)
        {
            FlWriteFile (FileId, " ", 1);
        }



        FlPrintFile (FileId, "    /* %8.8X",
            AslGbl_CurrentAmlOffset - AslGbl_CurrentHexColumn);



        LsDumpAsciiInComment (FileId, AslGbl_CurrentHexColumn, AslGbl_AmlBuffer);
        FlPrintFile (FileId, " */");
        break;

    default:



        return;
    }

    FlPrintFile (FileId, "\n");

    AslGbl_CurrentHexColumn = 0;
    AslGbl_HexBytesWereWritten = TRUE;
}
