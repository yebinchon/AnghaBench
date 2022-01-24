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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ mode_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  NV_FLAG_NO_UNIQUE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const* const) ; 

__attribute__((used)) static nvlist_t *
FUNC6(int argc, const char * const *argv, int flags,
    mode_t mode, cap_rights_t *rightsp, int operations)
{
	nvlist_t *limits;
	int i;

	limits = FUNC3(NV_FLAG_NO_UNIQUE);
	if (limits == NULL)
		return (NULL);

	FUNC2(limits, "flags", flags);
	FUNC2(limits, "operations", operations);
	if (rightsp != NULL) {
		FUNC0(limits, "cap_rights", rightsp,
		    sizeof(*rightsp));
	}
	if ((flags & O_CREAT) != 0)
		FUNC2(limits, "mode", (uint64_t)mode);

	for (i = 0; i < argc; i++) {
		if (FUNC5(argv[i]) >= MAXPATHLEN) {
			FUNC4(limits);
			errno = ENAMETOOLONG;
			return (NULL);
		}
		FUNC1(limits, argv[i]);
	}

	return (limits);
}