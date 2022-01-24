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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

int
FUNC5 (int argc, char **argv)
{
    int ret = 0;

    ret += FUNC0 ();
    ret += FUNC1 ();
#ifdef HAVE_LONG_LONG
    ret += cmp_with_sprintf_long_long ();
#endif
    ret += FUNC3 ();
    ret += FUNC4 ();
    return ret;
}