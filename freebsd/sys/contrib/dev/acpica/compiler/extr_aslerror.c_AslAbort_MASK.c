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
 int /*<<< orphan*/  ASL_FILE_STDERR ; 
 int /*<<< orphan*/  ASL_FILE_STDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AslGbl_DebugFlag ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void
FUNC2 (
    void)
{

    FUNC0 (ASL_FILE_STDERR);
    if (AslGbl_DebugFlag)
    {
        /* Print error summary to stdout also */

        FUNC0 (ASL_FILE_STDOUT);
    }

    FUNC1 (1);
}