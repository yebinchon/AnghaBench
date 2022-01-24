#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  long UINT32 ;
struct TYPE_3__ {char* Signature; long Length; scalar_t__* OemTableId; scalar_t__* OemId; scalar_t__* AslCompilerId; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ ACPI_TABLE_HEADER ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_SIZE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,long)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long ACPI_NAMESEG_SIZE ; 
 long ACPI_OEM_ID_SIZE ; 
 long ACPI_OEM_TABLE_ID_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_HEADER ; 
 int /*<<< orphan*/  AE_BAD_SIGNATURE ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,long,long) ; 
 int FUNC6 (TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC9 (
    FILE                    *File,
    long                    TableOffset)
{
    ACPI_TABLE_HEADER       TableHeader;
    ACPI_SIZE               Actual;
    long                    OriginalOffset;
    UINT32                  FileSize;
    UINT32                  i;


    FUNC0 (AcValidateTableHeader);


    /* Read a potential table header */

    OriginalOffset = FUNC8 (File);
    FUNC7 (File, TableOffset, SEEK_SET);

    Actual = FUNC6 (&TableHeader, 1, sizeof (ACPI_TABLE_HEADER), File);
    FUNC7 (File, OriginalOffset, SEEK_SET);

    if (Actual < sizeof (ACPI_TABLE_HEADER))
    {
        return (AE_ERROR);
    }

    /* Validate the signature (limited ASCII chars) */

    if (!FUNC3 (TableHeader.Signature))
    {
        return (AE_BAD_SIGNATURE);
    }

    /* Validate table length against bytes remaining in the file */

    FileSize = FUNC4 (File);
    if (TableHeader.Length > (UINT32) (FileSize - TableOffset))
    {
        FUNC5 (stderr, "Table [%4.4s] is too long for file - "
            "needs: 0x%.2X, remaining in file: 0x%.2X\n",
            TableHeader.Signature, TableHeader.Length,
            (UINT32) (FileSize - TableOffset));
        return (AE_BAD_HEADER);
    }

    /*
     * These fields must be ASCII: OemId, OemTableId, AslCompilerId.
     * We allow a NULL terminator in OemId and OemTableId.
     */
    for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
    {
        if (!FUNC1 ((UINT8) TableHeader.AslCompilerId[i]))
        {
            goto BadCharacters;
        }
    }

    for (i = 0; (i < ACPI_OEM_ID_SIZE) && (TableHeader.OemId[i]); i++)
    {
        if (!FUNC1 ((UINT8) TableHeader.OemId[i]))
        {
            goto BadCharacters;
        }
    }

    for (i = 0; (i < ACPI_OEM_TABLE_ID_SIZE) && (TableHeader.OemTableId[i]); i++)
    {
        if (!FUNC1 ((UINT8) TableHeader.OemTableId[i]))
        {
            goto BadCharacters;
        }
    }

    return (AE_OK);


BadCharacters:

    FUNC2 ((AE_INFO,
        "Table header for [%4.4s] has invalid ASCII character(s)",
        TableHeader.Signature));
    return (AE_OK);
}