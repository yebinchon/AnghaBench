#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_userquota_prop_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char const*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*,int,int,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC5(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type,
    const char *domain, uint64_t rid, uint64_t *valp)
{
	char buf[32];
	int err;
	uint64_t obj;

	*valp = 0;

	if (!FUNC1(zfsvfs->z_os))
		return (FUNC0(ENOTSUP));

	obj = FUNC4(zfsvfs, type);
	if (obj == 0)
		return (0);

	err = FUNC2(zfsvfs, domain, rid, buf, B_FALSE);
	if (err)
		return (err);

	err = FUNC3(zfsvfs->z_os, obj, buf, 8, 1, valp);
	if (err == ENOENT)
		err = 0;
	return (err);
}