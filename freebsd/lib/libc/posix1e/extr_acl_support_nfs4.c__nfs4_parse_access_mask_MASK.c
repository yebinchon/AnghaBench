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
typedef  int acl_perm_t ;

/* Variables and functions */
 int /*<<< orphan*/  a_access_masks ; 
 int FUNC0 (char const*,int*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*,int*,int /*<<< orphan*/ ,char*,int*) ; 

int
FUNC2(const char *str, acl_perm_t *perms)
{
	int error, try_compact;
	int tmpperms;

	error = FUNC1(str, &tmpperms, a_access_masks,
	    "access permissions", &try_compact);
	if (error && try_compact)
		error = FUNC0(str, &tmpperms,
		    a_access_masks, "access permissions");

	*perms = tmpperms;

	return (error);
}