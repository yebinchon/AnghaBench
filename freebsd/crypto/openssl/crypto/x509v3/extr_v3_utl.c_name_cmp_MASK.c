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
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,int) ; 

int FUNC2(const char *name, const char *cmp)
{
    int len, ret;
    char c;
    len = FUNC0(cmp);
    if ((ret = FUNC1(name, cmp, len)))
        return ret;
    c = name[len];
    if (!c || (c == '.'))
        return 0;
    return 1;
}