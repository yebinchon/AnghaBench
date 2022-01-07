
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef long UINT32 ;
struct TYPE_3__ {char* Signature; long Length; scalar_t__* OemTableId; scalar_t__* OemId; scalar_t__* AslCompilerId; } ;
typedef int FILE ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;


 int ACPI_FUNCTION_TRACE (int (*) (int *,long)) ;
 int ACPI_IS_ASCII (int ) ;
 long ACPI_NAMESEG_SIZE ;
 long ACPI_OEM_ID_SIZE ;
 long ACPI_OEM_TABLE_ID_SIZE ;
 int ACPI_WARNING (int ) ;
 int AE_BAD_HEADER ;
 int AE_BAD_SIGNATURE ;
 int AE_ERROR ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiUtValidNameseg (char*) ;
 long CmGetFileSize (int *) ;
 int SEEK_SET ;
 int fprintf (int ,char*,char*,long,long) ;
 int fread (TYPE_1__*,int,int,int *) ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 int stderr ;

ACPI_STATUS
AcValidateTableHeader (
    FILE *File,
    long TableOffset)
{
    ACPI_TABLE_HEADER TableHeader;
    ACPI_SIZE Actual;
    long OriginalOffset;
    UINT32 FileSize;
    UINT32 i;


    ACPI_FUNCTION_TRACE (AcValidateTableHeader);




    OriginalOffset = ftell (File);
    fseek (File, TableOffset, SEEK_SET);

    Actual = fread (&TableHeader, 1, sizeof (ACPI_TABLE_HEADER), File);
    fseek (File, OriginalOffset, SEEK_SET);

    if (Actual < sizeof (ACPI_TABLE_HEADER))
    {
        return (AE_ERROR);
    }



    if (!AcpiUtValidNameseg (TableHeader.Signature))
    {
        return (AE_BAD_SIGNATURE);
    }



    FileSize = CmGetFileSize (File);
    if (TableHeader.Length > (UINT32) (FileSize - TableOffset))
    {
        fprintf (stderr, "Table [%4.4s] is too long for file - "
            "needs: 0x%.2X, remaining in file: 0x%.2X\n",
            TableHeader.Signature, TableHeader.Length,
            (UINT32) (FileSize - TableOffset));
        return (AE_BAD_HEADER);
    }





    for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
    {
        if (!ACPI_IS_ASCII ((UINT8) TableHeader.AslCompilerId[i]))
        {
            goto BadCharacters;
        }
    }

    for (i = 0; (i < ACPI_OEM_ID_SIZE) && (TableHeader.OemId[i]); i++)
    {
        if (!ACPI_IS_ASCII ((UINT8) TableHeader.OemId[i]))
        {
            goto BadCharacters;
        }
    }

    for (i = 0; (i < ACPI_OEM_TABLE_ID_SIZE) && (TableHeader.OemTableId[i]); i++)
    {
        if (!ACPI_IS_ASCII ((UINT8) TableHeader.OemTableId[i]))
        {
            goto BadCharacters;
        }
    }

    return (AE_OK);


BadCharacters:

    ACPI_WARNING ((AE_INFO,
        "Table header for [%4.4s] has invalid ASCII character(s)",
        TableHeader.Signature));
    return (AE_OK);
}
