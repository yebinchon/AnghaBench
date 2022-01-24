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
typedef  int UINT16 ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 

void
FUNC1 (
    UINT16                  Mask)
{
    UINT32                  i;
    BOOLEAN                 Previous = FALSE;


    /* Open the initializer list */

    FUNC0 ("{");

    /* Examine each bit */

    for (i = 0; i < 16; i++)
    {
        /* Only interested in bits that are set to 1 */

        if (Mask & 1)
        {
            if (Previous)
            {
                FUNC0 (",");
            }

            Previous = TRUE;
            FUNC0 ("%u", i);
        }

        Mask >>= 1;
    }

    /* Close list */

    FUNC0 ("}\n");
}