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
 scalar_t__ FUNC0 (char) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static char *FUNC2(char *val)
{
	char *p = val;
	/* clean leading spaces */
	while (FUNC0(*p))
		p++;
	val = p;
	if (!*val)
		return val;
	/* clean trailing spaces */
	p = val + FUNC1(val) - 1;
	while (p > val && FUNC0(*p))
		p--;
	p[1] = '\0';
	/* clean quotas */
	if ((*val == '\"' && *p == '\"') || (*val == '\'' && *p == '\'')) {
		val++;
		*p-- = '\0';
	}
	return val;
}