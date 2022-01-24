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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_DUPFD_CLOEXEC ; 
 int /*<<< orphan*/  NV_TYPE_DESCRIPTOR_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 

nvpair_t *
FUNC8(const char *name, const int *value,
    size_t nitems)
{
	unsigned int ii;
	nvpair_t *nvp;
	int *fds;

	if (value == NULL) {
		FUNC2(EINVAL);
		return (NULL);
	}

	nvp = NULL;

	fds = FUNC6(sizeof(value[0]) * nitems);
	if (fds == NULL)
		return (NULL);
	for (ii = 0; ii < nitems; ii++) {
		if (value[ii] == -1) {
			fds[ii] = -1;
		} else {
			fds[ii] = FUNC4(value[ii], F_DUPFD_CLOEXEC, 0);
			if (fds[ii] == -1)
				goto fail;
		}
	}

	nvp = FUNC7(name, NV_TYPE_DESCRIPTOR_ARRAY,
	    (uint64_t)(uintptr_t)fds, sizeof(int64_t) * nitems, nitems);

fail:
	if (nvp == NULL) {
		FUNC1();
		for (; ii > 0; ii--) {
			if (fds[ii - 1] != -1)
				FUNC3(fds[ii - 1]);
		}
		FUNC5(fds);
		FUNC0();
	}

	return (nvp);
}