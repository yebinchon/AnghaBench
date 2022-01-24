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

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_TYPE_DESCRIPTOR_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 

nvpair_t *
FUNC7(const char *name, int *value, size_t nitems)
{
	nvpair_t *nvp;
	size_t i;

	if (value == NULL || nitems == 0) {
		FUNC2(EINVAL);
		return (NULL);
	}

	for (i = 0; i < nitems; i++) {
		if (value[i] != -1 && !FUNC4(value[i])) {
			FUNC2(EBADF);
			goto fail;
		}
	}

	nvp = FUNC6(name, NV_TYPE_DESCRIPTOR_ARRAY,
	    (uint64_t)(uintptr_t)value, sizeof(value[0]) * nitems, nitems);
	if (nvp == NULL)
		goto fail;

	return (nvp);
fail:
	FUNC1();
	for (i = 0; i < nitems; i++) {
		if (FUNC4(value[i]))
			FUNC3(value[i]);
	}
	FUNC5(value);
	FUNC0();

	return (NULL);
}