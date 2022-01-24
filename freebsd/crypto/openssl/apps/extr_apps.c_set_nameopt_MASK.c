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
 int /*<<< orphan*/  nmflag ; 
 int nmflag_set ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 

int FUNC1(const char *arg)
{
    int ret = FUNC0(&nmflag, arg);

    if (ret)
        nmflag_set = 1;

    return ret;
}