
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int Handle; } ;


 int ACPI_FREE (int *) ;
 int ACPI_RAW_TABLE_DATA_HEADER ;
 int ASL_FILE_AML_OUTPUT ;
 size_t ASL_FILE_LISTING_OUTPUT ;
 int AcpiOsPrintf (char*,int ,int ,int ) ;
 int AcpiOsRedirectOutput (int ) ;
 int AcpiUtDumpBuffer (int *,int ,int ,int ) ;
 TYPE_1__* AslGbl_Files ;
 int AslGbl_ListingFlag ;
 int AslGbl_TableLength ;
 int DB_BYTE_DISPLAY ;
 int FlReadFile (int ,int *,int ) ;
 int FlSeekFile (int ,int ) ;
 int * UtLocalCalloc (int ) ;
 int stdout ;

void
DtWriteTableToListing (
    void)
{
    UINT8 *Buffer;


    if (!AslGbl_ListingFlag)
    {
        return;
    }



    Buffer = UtLocalCalloc (AslGbl_TableLength);
    FlSeekFile (ASL_FILE_AML_OUTPUT, 0);
    FlReadFile (ASL_FILE_AML_OUTPUT, Buffer, AslGbl_TableLength);



    AcpiOsRedirectOutput (AslGbl_Files[ASL_FILE_LISTING_OUTPUT].Handle);

    AcpiOsPrintf ("\n%s: Length %d (0x%X)\n\n",
        ACPI_RAW_TABLE_DATA_HEADER, AslGbl_TableLength, AslGbl_TableLength);
    AcpiUtDumpBuffer (Buffer, AslGbl_TableLength, DB_BYTE_DISPLAY, 0);

    AcpiOsRedirectOutput (stdout);
    ACPI_FREE (Buffer);
}
