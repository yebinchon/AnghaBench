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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

BOOLEAN
FUNC5 (
    FILE                    *File)
{
    UINT8                   Byte;
    BOOLEAN                 IsBinary = FALSE;
    long                    FileOffset;


    /* Scan entire file for any non-ASCII bytes */

    FileOffset = FUNC2 (File);
    while (FUNC0 (&Byte, 1, 1, File) == 1)
    {
        if (!FUNC3 (Byte) && !FUNC4 (Byte))
        {
            IsBinary = TRUE;
            goto Exit;
        }
    }

Exit:
    FUNC1 (File, FileOffset, SEEK_SET);
    return (IsBinary);
}