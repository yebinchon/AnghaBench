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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  EPERM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DELEG_NAME ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,char,void*) ; 

__attribute__((used)) static int
FUNC3(objset_t *mos, uint64_t zapobj,
    char type, char checkflag, void *valp, const char *perm)
{
	int error;
	uint64_t jumpobj, zero;
	char whokey[ZFS_MAX_DELEG_NAME];

	FUNC2(whokey, type, checkflag, valp);
	error = FUNC1(mos, zapobj, whokey, 8, 1, &jumpobj);
	if (error == 0) {
		error = FUNC1(mos, jumpobj, perm, 8, 1, &zero);
		if (error == ENOENT)
			error = FUNC0(EPERM);
	}
	return (error);
}