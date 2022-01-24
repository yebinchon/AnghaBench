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
struct null_args {int /*<<< orphan*/  nulla_target; } ;
typedef  int /*<<< orphan*/  nargs ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  MOUNT_NULL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct null_args*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int,struct null_args*,int) ; 

__attribute__((used)) static void
FUNC5(const char *what, const char *mp, int flags)
{
	struct null_args nargs;

	if (FUNC3(what, 0777) == -1) {
		if (errno != EEXIST)
			FUNC1("null create %s", what);
	}
	if (FUNC3(mp, 0777) == -1) {
		if (errno != EEXIST)
			FUNC1("null create %s", mp);
	}
	FUNC2(&nargs, 0, sizeof(nargs));
	nargs.nulla_target = FUNC0(what);
	if (FUNC4(MOUNT_NULL, mp, flags, &nargs, sizeof(nargs)) == -1)
		FUNC1("could not mount nullfs");
}