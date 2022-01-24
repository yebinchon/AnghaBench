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
 scalar_t__ AE_ERROR ; 
 int /*<<< orphan*/  ASL_FILE_INPUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3 (
    void)
{
    char                    Buffer;


    while (FUNC2 (ASL_FILE_INPUT, &Buffer, 1) != AE_ERROR)
    {
        FUNC0 ((int) Buffer);
    }

    FUNC1 ();
}