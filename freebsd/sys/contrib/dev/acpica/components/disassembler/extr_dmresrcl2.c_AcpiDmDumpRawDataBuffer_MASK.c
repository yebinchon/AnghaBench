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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (
    UINT8                   *Buffer,
    UINT32                  Length,
    UINT32                  Level)
{
    UINT32                  Index;
    UINT32                  i;
    UINT32                  j;


    if (!Length)
    {
        return;
    }

    FUNC1 ("RawDataBuffer (0x%.2X)  // Vendor Data", Length);

    FUNC1 ("\n");
    FUNC0 (Level + 1);
    FUNC1 ("{\n");
    FUNC0 (Level + 2);

    for (i = 0; i < Length;)
    {
        for (j = 0; j < 8; j++)
        {
            Index = i + j;
            if (Index >= Length)
            {
                goto Finish;
            }

            FUNC1 ("0x%2.2X", Buffer[Index]);
            if ((Index + 1) >= Length)
            {
                goto Finish;
            }

            FUNC1 (", ");
        }

        FUNC1 ("\n");
        FUNC0 (Level + 2);

        i += 8;
    }

Finish:
    FUNC1 ("\n");
    FUNC0 (Level + 1);
    FUNC1 ("}");
}