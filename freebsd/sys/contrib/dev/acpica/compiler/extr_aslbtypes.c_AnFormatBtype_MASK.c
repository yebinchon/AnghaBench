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
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int ACPI_TYPE_EXTERNAL_MAX ; 
 char* FUNC0 (int) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

void
FUNC2 (
    char                    *Buffer,
    UINT32                  Btype)
{
    UINT32                  Type;
    BOOLEAN                 First = TRUE;


    *Buffer = 0;
    if (Btype == 0)
    {
        FUNC1 (Buffer, "NoReturnValue");
        return;
    }

    for (Type = 1; Type <= ACPI_TYPE_EXTERNAL_MAX; Type++)
    {
        if (Btype & 0x00000001)
        {
            if (!First)
            {
                FUNC1 (Buffer, "|");
            }

            First = FALSE;
            FUNC1 (Buffer, FUNC0 (Type));
        }
        Btype >>= 1;
    }

    if (Btype & 0x00000001)
    {
        if (!First)
        {
            FUNC1 (Buffer, "|");
        }

        First = FALSE;
        FUNC1 (Buffer, "Reference");
    }

    Btype >>= 1;
    if (Btype & 0x00000001)
    {
        if (!First)
        {
            FUNC1 (Buffer, "|");
        }

        FUNC1 (Buffer, "Resource");
    }
}