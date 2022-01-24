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
 scalar_t__ MANDOCLEVEL_SYSERR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char const*) ; 

char *
FUNC2(const char *ptr)
{
	char	*p;

	p = FUNC1(ptr);
	if (p == NULL)
		FUNC0((int)MANDOCLEVEL_SYSERR, NULL);
	return p;
}