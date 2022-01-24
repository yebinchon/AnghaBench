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

/* Variables and functions */
 int AslGbl_HexOutputFlag ; 
#define  HEX_OUTPUT_ASL 130 
#define  HEX_OUTPUT_ASM 129 
#define  HEX_OUTPUT_C 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3 (
    void)
{

    switch (AslGbl_HexOutputFlag)
    {
    case HEX_OUTPUT_C:

        FUNC2 ();
        break;

    case HEX_OUTPUT_ASM:

        FUNC1 ();
        break;

    case HEX_OUTPUT_ASL:

        FUNC0 ();
        break;

    default:

        /* No other output types supported */

        break;
    }
}