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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NV_FLAG_IN_ARRAY ; 
 int /*<<< orphan*/  NV_TYPE_NVLIST ; 
 int /*<<< orphan*/  NV_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

nvpair_t *
FUNC12(const char *name, nvlist_t **value, size_t nitems)
{
	nvpair_t *parent;
	unsigned int ii;
	int flags;

	if (value == NULL || nitems == 0) {
		FUNC2(EINVAL);
		return (NULL);
	}

	for (ii = 0; ii < nitems; ii++) {
		if (value == NULL || FUNC5(value[ii]) != 0 ||
		    FUNC7(value[ii], NULL) != NULL) {
			FUNC2(EINVAL);
			goto fail;
		}
		if (ii > 0) {
			nvpair_t *nvp;

			nvp = FUNC11(" ", NV_TYPE_NVLIST,
			    (uint64_t)(uintptr_t)value[ii], 0, 0);
			if (nvp == NULL)
				goto fail;
			FUNC8(value[ii - 1], nvp);
		}
	}
	flags = FUNC6(value[nitems - 1]) | NV_FLAG_IN_ARRAY;
	FUNC9(value[nitems - 1], flags);

	parent = FUNC11(name, NV_TYPE_NVLIST_ARRAY,
	    (uint64_t)(uintptr_t)value, 0, nitems);
	if (parent == NULL)
		goto fail;

	for (ii = 0; ii < nitems; ii++)
		FUNC10(value[ii], parent);

	return (parent);
fail:
	FUNC1();
	for (ii = 0; ii < nitems; ii++) {
		if (value[ii] != NULL &&
		    FUNC7(value[ii], NULL) != NULL) {
			FUNC4(value[ii]);
		}
	}
	FUNC3(value);
	FUNC0();

	return (NULL);
}