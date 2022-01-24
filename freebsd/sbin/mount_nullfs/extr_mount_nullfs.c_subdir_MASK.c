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
 scalar_t__ FUNC1 (char const*,char const*,int) ; 

int
FUNC2(const char *p, const char *dir)
{
	int l;

	l = FUNC0(dir);
	if (l <= 1)
		return (1);

	if ((FUNC1(p, dir, l) == 0) && (p[l] == '/' || p[l] == '\0'))
		return (1);

	return (0);
}