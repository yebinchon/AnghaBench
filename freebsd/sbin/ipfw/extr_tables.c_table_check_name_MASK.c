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
 int EINVAL ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int
FUNC2(const char *tablename)
{

	if (FUNC0(tablename) != 0)
		return (EINVAL);
	/* Restrict some 'special' names */
	if (FUNC1(tablename, "all") == 0)
		return (EINVAL);
	return (0);
}