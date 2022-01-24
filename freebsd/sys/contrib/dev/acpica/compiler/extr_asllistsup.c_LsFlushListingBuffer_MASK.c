#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT32 ;

/* Variables and functions */
#define  ASL_FILE_ASM_SOURCE_OUTPUT 130 
#define  ASL_FILE_C_SOURCE_OUTPUT 129 
#define  ASL_FILE_LISTING_OUTPUT 128 
 int /*<<< orphan*/ * AslGbl_AmlBuffer ; 
 scalar_t__ AslGbl_CurrentAmlOffset ; 
 scalar_t__ AslGbl_CurrentHexColumn ; 
 int /*<<< orphan*/  AslGbl_HexBytesWereWritten ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 scalar_t__ HEX_LISTING_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 

void
FUNC4 (
    UINT32                  FileId)
{
    UINT32                  i;


    if (AslGbl_CurrentHexColumn == 0)
    {
        return;
    }

    /* Write the hex bytes */

    switch (FileId)
    {
    case ASL_FILE_LISTING_OUTPUT:

        for (i = 0; i < AslGbl_CurrentHexColumn; i++)
        {
            FUNC0 (FileId, "%2.2X ", AslGbl_AmlBuffer[i]);
        }

        for (i = 0; i < ((HEX_LISTING_LINE_SIZE - AslGbl_CurrentHexColumn) * 3); i++)
        {
            FUNC1 (FileId, ".", 1);
        }

        /* Write the ASCII character associated with each of the bytes */

        FUNC2 (FileId, AslGbl_CurrentHexColumn, AslGbl_AmlBuffer);
        break;


    case ASL_FILE_ASM_SOURCE_OUTPUT:

        for (i = 0; i < AslGbl_CurrentHexColumn; i++)
        {
            if (i > 0)
            {
                FUNC0 (FileId, ",");
            }

            FUNC0 (FileId, "0%2.2Xh", AslGbl_AmlBuffer[i]);
        }

        for (i = 0; i < ((HEX_LISTING_LINE_SIZE - AslGbl_CurrentHexColumn) * 5); i++)
        {
            FUNC1 (FileId, " ", 1);
        }

        FUNC0 (FileId, "  ;%8.8X",
            AslGbl_CurrentAmlOffset - HEX_LISTING_LINE_SIZE);

        /* Write the ASCII character associated with each of the bytes */

        FUNC2 (FileId, AslGbl_CurrentHexColumn, AslGbl_AmlBuffer);
        break;


    case ASL_FILE_C_SOURCE_OUTPUT:

        for (i = 0; i < AslGbl_CurrentHexColumn; i++)
        {
            FUNC0 (FileId, "0x%2.2X,", AslGbl_AmlBuffer[i]);
        }

        /* Pad hex output with spaces if line is shorter than max line size */

        for (i = 0; i < ((HEX_LISTING_LINE_SIZE - AslGbl_CurrentHexColumn) * 5); i++)
        {
            FUNC1 (FileId, " ", 1);
        }

        /* AML offset for the start of the line */

        FUNC0 (FileId, "    /* %8.8X",
            AslGbl_CurrentAmlOffset - AslGbl_CurrentHexColumn);

        /* Write the ASCII character associated with each of the bytes */

        FUNC3 (FileId, AslGbl_CurrentHexColumn, AslGbl_AmlBuffer);
        FUNC0 (FileId, " */");
        break;

    default:

        /* No other types supported */

        return;
    }

    FUNC0 (FileId, "\n");

    AslGbl_CurrentHexColumn = 0;
    AslGbl_HexBytesWereWritten = TRUE;
}