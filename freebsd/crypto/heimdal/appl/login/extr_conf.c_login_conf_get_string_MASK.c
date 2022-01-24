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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  confbuf ; 
 scalar_t__ FUNC1 () ; 

char *
FUNC2(const char *str)
{
    char *value;
    if(FUNC1() != 0)
	return NULL;
    if(FUNC0(confbuf, (char *)str, &value) < 0)
	return NULL;
    return value;
}