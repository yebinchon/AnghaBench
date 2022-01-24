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
typedef  size_t UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_FILE_AML_OUTPUT ; 
 int /*<<< orphan*/  ASL_FILE_HEX_OUTPUT ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HEX_TABLE_LINE_SIZE ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (
    void)
{
    UINT8                   FileData[HEX_TABLE_LINE_SIZE];
    UINT32                  LineLength;
    UINT32                  Offset = 0;
    UINT32                  AmlFileSize;
    UINT32                  i;


    /* Get AML size, seek back to start */

    AmlFileSize = FUNC0 (ASL_FILE_AML_OUTPUT);
    FUNC2 (ASL_FILE_AML_OUTPUT, 0);

    FUNC1 (ASL_FILE_HEX_OUTPUT, " * ASL source code output\n");
    FUNC1 (ASL_FILE_HEX_OUTPUT, " * AML code block contains 0x%X bytes\n *\n */\n",
        AmlFileSize);
    FUNC1 (ASL_FILE_HEX_OUTPUT, "    Name (BUF1, Buffer()\n    {\n");

    while (Offset < AmlFileSize)
    {
        /* Read enough bytes needed for one output line */

        LineLength = FUNC3 (FileData);
        if (!LineLength)
        {
            break;
        }

        FUNC1 (ASL_FILE_HEX_OUTPUT, "        ");

        for (i = 0; i < LineLength; i++)
        {
            /*
             * Print each hex byte.
             * Add a comma until the very last byte of the AML file
             * (Some C compilers complain about a trailing comma)
             */
            FUNC1 (ASL_FILE_HEX_OUTPUT, "0x%2.2X", FileData[i]);
            if ((Offset + i + 1) < AmlFileSize)
            {
                FUNC1 (ASL_FILE_HEX_OUTPUT, ",");
            }
            else
            {
                FUNC1 (ASL_FILE_HEX_OUTPUT, " ");
            }
        }

        /* Add fill spaces if needed for last line */

        if (LineLength < HEX_TABLE_LINE_SIZE)
        {
            FUNC1 (ASL_FILE_HEX_OUTPUT, "%*s",
                5 * (HEX_TABLE_LINE_SIZE - LineLength), " ");
        }

        /* Emit the offset and ascii dump for the entire line */

        FUNC1 (ASL_FILE_HEX_OUTPUT, "  /* %8.8X", Offset);
        FUNC4 (ASL_FILE_HEX_OUTPUT, LineLength, FileData);

        FUNC1 (ASL_FILE_HEX_OUTPUT, "%*s*/\n",
            HEX_TABLE_LINE_SIZE - LineLength + 1, " ");

        Offset += LineLength;
    }

    FUNC1 (ASL_FILE_HEX_OUTPUT, "    })\n");
}