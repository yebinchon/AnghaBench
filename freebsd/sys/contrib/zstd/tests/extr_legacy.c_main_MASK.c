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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

int FUNC4(void)
{
    {   int const ret = FUNC2();
        if (ret) return ret; }
    {   int const ret = FUNC3();
        if (ret) return ret; }
    {   int const ret = FUNC1();
        if (ret) return ret; }

    FUNC0("OK\n");
    return 0;
}