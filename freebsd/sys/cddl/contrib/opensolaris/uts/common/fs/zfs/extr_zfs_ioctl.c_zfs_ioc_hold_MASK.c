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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ minor_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC6 (char*) ; 
 int FUNC7 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(const char *pool, nvlist_t *args, nvlist_t *errlist)
{
	nvpair_t *pair;
	nvlist_t *holds;
	int cleanup_fd = -1;
	int error;
	minor_t minor = 0;

	error = FUNC3(args, "holds", &holds);
	if (error != 0)
		return (FUNC0(EINVAL));

	/* make sure the user didn't pass us any invalid (empty) tags */
	for (pair = FUNC4(holds, NULL); pair != NULL;
	    pair = FUNC4(holds, pair)) {
		char *htag;

		error = FUNC5(pair, &htag);
		if (error != 0)
			return (FUNC0(error));

		if (FUNC6(htag) == 0)
			return (FUNC0(EINVAL));
	}

	if (FUNC2(args, "cleanup_fd", &cleanup_fd) == 0) {
		error = FUNC7(cleanup_fd, &minor);
		if (error != 0)
			return (error);
	}

	error = FUNC1(holds, minor, errlist);
	if (minor != 0)
		FUNC8(cleanup_fd);
	return (error);
}