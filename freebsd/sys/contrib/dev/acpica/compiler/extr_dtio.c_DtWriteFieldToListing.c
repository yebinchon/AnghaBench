
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char UINT8 ;
typedef int UINT32 ;
struct TYPE_3__ {int TableOffset; int Value; int Name; scalar_t__ Column; int ByteOffset; } ;
typedef TYPE_1__ DT_FIELD ;


 scalar_t__ AE_OK ;
 int ASL_FILE_INPUT ;
 int ASL_FILE_LISTING_OUTPUT ;
 int AslGbl_ListingFlag ;
 int DtDumpBuffer (int ,char*,int ,int ) ;
 int FlPrintFile (int ,char*,...) ;
 scalar_t__ FlReadFile (int ,char*,int) ;
 int FlSeekFile (int ,int ) ;
 int FlWriteFile (int ,char*,int) ;
 int strlen (int ) ;

void
DtWriteFieldToListing (
    UINT8 *Buffer,
    DT_FIELD *Field,
    UINT32 Length)
{
    UINT8 FileByte;


    if (!AslGbl_ListingFlag || !Field)
    {
        return;
    }



    FlPrintFile (ASL_FILE_LISTING_OUTPUT, "Input:  ");
    FlSeekFile (ASL_FILE_INPUT, Field->ByteOffset);

    while (FlReadFile (ASL_FILE_INPUT, &FileByte, 1) == AE_OK)
    {
        FlWriteFile (ASL_FILE_LISTING_OUTPUT, &FileByte, 1);
        if (FileByte == '\n')
        {
            break;
        }
    }



    FlPrintFile (ASL_FILE_LISTING_OUTPUT, "Parsed: %*s : %.64s",
        Field->Column-4, Field->Name, Field->Value);

    if (strlen (Field->Value) > 64)
    {
        FlPrintFile (ASL_FILE_LISTING_OUTPUT, "...Additional data, length 0x%X\n",
            (UINT32) strlen (Field->Value));
    }

    FlPrintFile (ASL_FILE_LISTING_OUTPUT, "\n");



    DtDumpBuffer (ASL_FILE_LISTING_OUTPUT, Buffer, Field->TableOffset, Length);
}
