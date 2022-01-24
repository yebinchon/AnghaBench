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
 int FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

int
FUNC2(const char *a, const char *b)
{
	int la, lb;

	la = FUNC1(a);
	lb = FUNC1(b);

	if (la > lb)
		return (1);
	else if (la < lb)
		return (-01);

	return (FUNC0(a, b));
}