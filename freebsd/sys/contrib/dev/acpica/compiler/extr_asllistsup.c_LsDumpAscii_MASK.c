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
 int /*<<< orphan*/  FUNC0 (size_t,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (
    UINT32                  FileId,
    UINT32                  Count,
    UINT8                   *Buffer)
{
    UINT8                   BufChar;
    UINT32                  i;


    FUNC0 (FileId, "    \"");
    for (i = 0; i < Count; i++)
    {
        BufChar = Buffer[i];
        if (FUNC1 (BufChar))
        {
            FUNC0 (FileId, "%c", BufChar);
        }
        else
        {
            /* Not a printable character, just put out a dot */

            FUNC0 (FileId, ".");
        }
    }

    FUNC0 (FileId, "\"");
}