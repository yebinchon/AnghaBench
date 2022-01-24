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
typedef  size_t ACPI_SIZE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (
    UINT32                  FileId,
    UINT8                   *Buffer,
    UINT32                  Offset,
    UINT32                  Length)
{
    UINT32                  i;
    UINT32                  j;
    UINT8                   BufChar;


    FUNC0 (FileId, "Output: [%3.3Xh %4.4d %3d] ",
        Offset, Offset, Length);

    i = 0;
    while (i < Length)
    {
        if (i >= 16)
        {
            FUNC0 (FileId, "%24s", "");
        }

        /* Print 16 hex chars */

        for (j = 0; j < 16;)
        {
            if (i + j >= Length)
            {
                /* Dump fill spaces */

                FUNC0 (FileId, "   ");
                j++;
                continue;
            }

            FUNC0 (FileId, "%02X ", Buffer[i+j]);
            j++;
        }

        FUNC0 (FileId, " ");
        for (j = 0; j < 16; j++)
        {
            if (i + j >= Length)
            {
                FUNC0 (FileId, "\n\n");
                return;
            }

            BufChar = Buffer[(ACPI_SIZE) i + j];
            if (FUNC1 (BufChar))
            {
                FUNC0 (FileId, "%c", BufChar);
            }
            else
            {
                FUNC0 (FileId, ".");
            }
        }

        /* Done with that line. */

        FUNC0 (FileId, "\n");
        i += 16;
    }

    FUNC0 (FileId, "\n\n");
}