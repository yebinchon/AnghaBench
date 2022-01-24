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
typedef  int /*<<< orphan*/  unionargs ;
struct union_args {char* target; int /*<<< orphan*/  mntflags; } ;

/* Variables and functions */
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  MOUNT_UNION ; 
 int /*<<< orphan*/  UNMNT_BELOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct union_args*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,struct union_args*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(const char *mp, char *lowerpath)
{
	struct union_args unionargs;

	FUNC5(lowerpath, "/lower");
	FUNC3(lowerpath, 0777);

	/* mount the union with our testfs as the upper layer */
	FUNC2(&unionargs, 0, sizeof(unionargs));
	unionargs.target = lowerpath;
	unionargs.mntflags = UNMNT_BELOW;

	if (FUNC4(MOUNT_UNION, mp, 0,
	    &unionargs, sizeof(unionargs)) == -1) {
		if (errno == EOPNOTSUPP) {
			FUNC1("fs does not support VOP_WHITEOUT");
		} else {
			FUNC0("union mount");
		}
	}
}