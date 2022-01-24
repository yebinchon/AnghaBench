#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zfs_prop_t ;
struct TYPE_2__ {int /*<<< orphan*/ * z_perm; } ;

/* Variables and functions */
 scalar_t__ ZPROP_INVAL ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* zfs_deleg_perm_tab ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 char const* FUNC3 (scalar_t__) ; 

const char *
FUNC4(const char *perm)
{
	int i;
	zfs_prop_t prop;

	for (i = 0; zfs_deleg_perm_tab[i].z_perm != NULL; i++) {
		if (FUNC0(perm, zfs_deleg_perm_tab[i].z_perm) == 0)
			return (perm);
	}

	prop = FUNC1(perm);
	if (prop != ZPROP_INVAL && FUNC2(prop))
		return (FUNC3(prop));
	return (NULL);

}