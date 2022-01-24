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
typedef  int /*<<< orphan*/  __va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC2(char **str, const char *fmt, __va_list ap)
{
	return FUNC1(str, FUNC0(), fmt, ap);
}