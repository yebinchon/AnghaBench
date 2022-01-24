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
typedef  int /*<<< orphan*/  HDBFlags ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int*,char const*) ; 

__attribute__((used)) static int
FUNC2(HDBFlags *f, const char *s)
{
    int ret;
    unsigned int tmp;

    ret = FUNC1 (&tmp, s);
    if (ret == 1)
	*f = FUNC0 (tmp);
    return ret;
}