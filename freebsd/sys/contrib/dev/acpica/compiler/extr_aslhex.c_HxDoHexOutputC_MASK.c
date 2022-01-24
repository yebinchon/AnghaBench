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
typedef  size_t UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/  Filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_FILE_AML_OUTPUT ; 
 size_t ASL_FILE_HEX_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* AslGbl_Files ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HEX_TABLE_LINE_SIZE ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (size_t,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (
    void)
{
    UINT8                   FileData[HEX_TABLE_LINE_SIZE];
    UINT32                  LineLength;
    UINT32                  Offset = 0;
    UINT32                  AmlFileSize;
    UINT32                  i;
    char                    *FileBasename;


    /* Obtain the file basename (filename with no extension) */

    FileBasename = FUNC1 (AslGbl_Files [ASL_FILE_HEX_OUTPUT].Filename);

    /* Get AML size, seek back to start */

    AmlFileSize = FUNC2 (ASL_FILE_AML_OUTPUT);
    FUNC4 (ASL_FILE_AML_OUTPUT, 0);

    /* Finish the file header and emit the non-data symbols */

    FUNC3 (ASL_FILE_HEX_OUTPUT, " * C source code output\n");
    FUNC3 (ASL_FILE_HEX_OUTPUT, " * AML code block contains 0x%X bytes\n *\n */\n",
        AmlFileSize);

    FUNC3 (ASL_FILE_HEX_OUTPUT, "#ifndef __%s_HEX__\n", FileBasename);
    FUNC3 (ASL_FILE_HEX_OUTPUT, "#define __%s_HEX__\n\n", FileBasename);

    FUNC0 (FileBasename);
    FUNC3 (ASL_FILE_HEX_OUTPUT, "unsigned char %s_aml_code[] =\n{\n", FileBasename);

    while (Offset < AmlFileSize)
    {
        /* Read enough bytes needed for one output line */

        LineLength = FUNC5 (FileData);
        if (!LineLength)
        {
            break;
        }

        FUNC3 (ASL_FILE_HEX_OUTPUT, "    ");

        for (i = 0; i < LineLength; i++)
        {
            /*
             * Output each hex byte in the form: "0xnn,"
             * Add a comma until the very last byte of the AML file
             * (Some C compilers complain about a trailing comma)
             */
            FUNC3 (ASL_FILE_HEX_OUTPUT, "0x%2.2X", FileData[i]);
            if ((Offset + i + 1) < AmlFileSize)
            {
                FUNC3 (ASL_FILE_HEX_OUTPUT, ",");
            }
            else
            {
                FUNC3 (ASL_FILE_HEX_OUTPUT, " ");
            }
        }

        /* Add fill spaces if needed for last line */

        if (LineLength < HEX_TABLE_LINE_SIZE)
        {
            FUNC3 (ASL_FILE_HEX_OUTPUT, "%*s",
                5 * (HEX_TABLE_LINE_SIZE - LineLength), " ");
        }

        /* Emit the offset and ascii dump for the entire line */

        FUNC3 (ASL_FILE_HEX_OUTPUT, "  /* %8.8X", Offset);
        FUNC6 (ASL_FILE_HEX_OUTPUT, LineLength, FileData);

        FUNC3 (ASL_FILE_HEX_OUTPUT, "%*s*/\n",
            HEX_TABLE_LINE_SIZE - LineLength + 1, " ");

        Offset += LineLength;
    }

    FUNC3 (ASL_FILE_HEX_OUTPUT, "};\n\n");
    FUNC3 (ASL_FILE_HEX_OUTPUT, "#endif\n");
}