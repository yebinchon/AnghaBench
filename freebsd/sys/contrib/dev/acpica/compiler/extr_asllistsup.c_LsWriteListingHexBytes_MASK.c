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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int UINT32 ;

/* Variables and functions */
#define  ASL_FILE_ASM_SOURCE_OUTPUT 130 
#define  ASL_FILE_C_SOURCE_OUTPUT 129 
#define  ASL_FILE_LISTING_OUTPUT 128 
 int /*<<< orphan*/  ASL_LISTING_LINE_PREFIX ; 
 int /*<<< orphan*/ * AslGbl_AmlBuffer ; 
 int /*<<< orphan*/  AslGbl_CurrentAmlOffset ; 
 size_t AslGbl_CurrentHexColumn ; 
 scalar_t__ AslGbl_HasIncludeFiles ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t HEX_LISTING_LINE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2 (
    UINT8                   *Buffer,
    UINT32                  Length,
    UINT32                  FileId)
{
    UINT32                  i;


    /* Transfer all requested bytes */

    for (i = 0; i < Length; i++)
    {
        /* Print line header when buffer is empty */

        if (AslGbl_CurrentHexColumn == 0)
        {
            if (AslGbl_HasIncludeFiles)
            {
                FUNC0 (FileId, "%*s", 10, " ");
            }

            switch (FileId)
            {
            case ASL_FILE_LISTING_OUTPUT:

                FUNC0 (FileId, "%8.8X%s", AslGbl_CurrentAmlOffset,
                    ASL_LISTING_LINE_PREFIX);
                break;

            case ASL_FILE_ASM_SOURCE_OUTPUT:

                FUNC0 (FileId, "    db ");
                break;

            case ASL_FILE_C_SOURCE_OUTPUT:

                FUNC0 (FileId, "        ");
                break;

            default:

                /* No other types supported */

                return;
            }
        }

        /* Transfer AML byte and update counts */

        AslGbl_AmlBuffer[AslGbl_CurrentHexColumn] = Buffer[i];

        AslGbl_CurrentHexColumn++;
        AslGbl_CurrentAmlOffset++;

        /* Flush buffer when it is full */

        if (AslGbl_CurrentHexColumn >= HEX_LISTING_LINE_SIZE)
        {
            FUNC1 (FileId);
        }
    }
}