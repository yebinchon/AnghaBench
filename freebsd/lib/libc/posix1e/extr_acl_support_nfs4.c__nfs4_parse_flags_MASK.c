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
typedef  int acl_flag_t ;

/* Variables and functions */
 int /*<<< orphan*/  a_flags ; 
 int FUNC0 (char const*,int*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,int*,int /*<<< orphan*/ ,char*,int*) ; 

int
FUNC2(const char *str, acl_flag_t *flags)
{
	int error, try_compact;
	int tmpflags;

	error = FUNC1(str, &tmpflags, a_flags, "flags", &try_compact);
	if (error && try_compact)
		error = FUNC0(str, &tmpflags, a_flags, "flags");

	*flags = tmpflags;

	return (error);
}