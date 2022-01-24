#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_2__ {int /*<<< orphan*/  Handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_RAW_TABLE_DATA_HEADER ; 
 int /*<<< orphan*/  ASL_FILE_AML_OUTPUT ; 
 size_t ASL_FILE_LISTING_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  AslGbl_ListingFlag ; 
 int /*<<< orphan*/  AslGbl_TableLength ; 
 int /*<<< orphan*/  DB_BYTE_DISPLAY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC7 (
    void)
{
    UINT8                   *Buffer;


    if (!AslGbl_ListingFlag)
    {
        return;
    }

    /* Read the entire table from the output file */

    Buffer = FUNC6 (AslGbl_TableLength);
    FUNC5 (ASL_FILE_AML_OUTPUT, 0);
    FUNC4 (ASL_FILE_AML_OUTPUT, Buffer, AslGbl_TableLength);

    /* Dump the raw table data */

    FUNC2 (AslGbl_Files[ASL_FILE_LISTING_OUTPUT].Handle);

    FUNC1 ("\n%s: Length %d (0x%X)\n\n",
        ACPI_RAW_TABLE_DATA_HEADER, AslGbl_TableLength, AslGbl_TableLength);
    FUNC3 (Buffer, AslGbl_TableLength, DB_BYTE_DISPLAY, 0);

    FUNC2 (stdout);
    FUNC0 (Buffer);
}