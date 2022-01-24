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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char const**,char*) ; 
 unsigned int FUNC2 (char const**) ; 

__attribute__((used)) static unsigned FUNC3(const char* stringPtr, unsigned* selectivity)
{
    if (!FUNC1(&stringPtr, "s=") && !FUNC1(&stringPtr, "selectivity=")) { return 0; }
    *selectivity = FUNC2(&stringPtr);
    if (stringPtr[0] != 0) return 0;
    FUNC0(4, "legacy: selectivity=%u\n", *selectivity);
    return 1;
}