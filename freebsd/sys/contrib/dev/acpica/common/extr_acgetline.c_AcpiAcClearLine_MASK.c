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
typedef  scalar_t__ UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char) ; 

__attribute__((used)) static void
FUNC2 (
    UINT32                  EndOfLine,
    UINT32                  CursorPosition)
{
    UINT32                  i;


    if (CursorPosition < EndOfLine)
    {
        /* Clear line from current position to end of line */

        for (i = 0; i < (EndOfLine - CursorPosition); i++)
        {
            FUNC1 (' ');
        }
    }

    /* Clear the entire line */

    for (; EndOfLine > 0; EndOfLine--)
    {
        FUNC0 ();
    }
}