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
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_DELEG_PERM_DESTROY ; 
 int /*<<< orphan*/  ZFS_DELEG_PERM_MOUNT ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC1(const char *name, cred_t *cr)
{
	int error;

	if ((error = FUNC0(name,
	    ZFS_DELEG_PERM_MOUNT, cr)) != 0)
		return (error);

	return (FUNC0(name, ZFS_DELEG_PERM_DESTROY, cr));
}