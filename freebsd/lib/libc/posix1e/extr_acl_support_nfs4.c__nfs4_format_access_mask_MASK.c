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
typedef  int /*<<< orphan*/  acl_perm_t ;

/* Variables and functions */
 int /*<<< orphan*/  a_access_masks ; 
 int FUNC0 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC2(char *str, size_t size, acl_perm_t var, int verbose)
{

	if (verbose)
		return (FUNC1(str, size, var, a_access_masks));

	return (FUNC0(str, size, var, a_access_masks));
}