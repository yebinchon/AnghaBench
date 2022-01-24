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
 int /*<<< orphan*/ ** FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

nvpair_t *
FUNC12(const char *name, const nvlist_t * const *value,
    size_t nitems)
{
	unsigned int ii;
	nvlist_t **nvls;
	nvpair_t *parent;
	int flags;

	nvls = NULL;

	if (value == NULL || nitems == 0) {
		FUNC2(EINVAL);
		return (NULL);
	}

	nvls = FUNC4(sizeof(value[0]) * nitems);
	if (nvls == NULL)
		return (NULL);

	for (ii = 0; ii < nitems; ii++) {
		if (value[ii] == NULL) {
			FUNC2(EINVAL);
			goto fail;
		}

		nvls[ii] = FUNC5(value[ii]);
		if (nvls[ii] == NULL)
			goto fail;

		if (ii > 0) {
			nvpair_t *nvp;

			nvp = FUNC11(" ", NV_TYPE_NVLIST,
			    (uint64_t)(uintptr_t)nvls[ii], 0, 0);
			if (nvp == NULL) {
				FUNC1();
				FUNC6(nvls[ii]);
				FUNC0();
				goto fail;
			}
			FUNC8(nvls[ii - 1], nvp);
		}
	}
	flags = FUNC7(nvls[nitems - 1]) | NV_FLAG_IN_ARRAY;
	FUNC9(nvls[nitems - 1], flags);

	parent = FUNC11(name, NV_TYPE_NVLIST_ARRAY,
	    (uint64_t)(uintptr_t)nvls, 0, nitems);
	if (parent == NULL)
		goto fail;

	for (ii = 0; ii < nitems; ii++)
		FUNC10(nvls[ii], parent);

	return (parent);

fail:
	FUNC1();
	for (; ii > 0; ii--)
		FUNC6(nvls[ii - 1]);
	FUNC3(nvls);
	FUNC0();

	return (NULL);
}