
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;





 int ASL_LISTING_LINE_PREFIX ;
 int * AslGbl_AmlBuffer ;
 int AslGbl_CurrentAmlOffset ;
 size_t AslGbl_CurrentHexColumn ;
 scalar_t__ AslGbl_HasIncludeFiles ;
 int FlPrintFile (int,char*,...) ;
 size_t HEX_LISTING_LINE_SIZE ;
 int LsFlushListingBuffer (int) ;

void
LsWriteListingHexBytes (
    UINT8 *Buffer,
    UINT32 Length,
    UINT32 FileId)
{
    UINT32 i;




    for (i = 0; i < Length; i++)
    {


        if (AslGbl_CurrentHexColumn == 0)
        {
            if (AslGbl_HasIncludeFiles)
            {
                FlPrintFile (FileId, "%*s", 10, " ");
            }

            switch (FileId)
            {
            case 128:

                FlPrintFile (FileId, "%8.8X%s", AslGbl_CurrentAmlOffset,
                    ASL_LISTING_LINE_PREFIX);
                break;

            case 130:

                FlPrintFile (FileId, "    db ");
                break;

            case 129:

                FlPrintFile (FileId, "        ");
                break;

            default:



                return;
            }
        }



        AslGbl_AmlBuffer[AslGbl_CurrentHexColumn] = Buffer[i];

        AslGbl_CurrentHexColumn++;
        AslGbl_CurrentAmlOffset++;



        if (AslGbl_CurrentHexColumn >= HEX_LISTING_LINE_SIZE)
        {
            LsFlushListingBuffer (FileId);
        }
    }
}
