#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {scalar_t__ nvp_type; scalar_t__ nvp_nitems; scalar_t__ nvp_data; } ;
typedef  TYPE_1__ nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  nvl ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int NV_FLAG_IN_ARRAY ; 
 int /*<<< orphan*/  NV_TYPE_NVLIST ; 
 scalar_t__ NV_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

int
FUNC14(nvpair_t *nvp, const nvlist_t *value)
{
	nvpair_t *tmpnvp;
	nvlist_t *nvl, *prev;
	int flags;

	FUNC1(nvp);
	FUNC2(nvp->nvp_type == NV_TYPE_NVLIST_ARRAY);
	if (value == NULL || FUNC5(value) != 0 ||
	    FUNC7(value, NULL) != NULL) {
		FUNC0(EINVAL);
		return (-1);
	}
	nvl = FUNC3(value);
	if (nvl == NULL) {
		return (-1);
	}
	flags = FUNC6(nvl) | NV_FLAG_IN_ARRAY;
	FUNC9(nvl, flags);

	tmpnvp = NULL;
	prev = NULL;
	if (nvp->nvp_nitems > 0) {
		nvlist_t **nvls = (void *)(uintptr_t)nvp->nvp_data;

		prev = nvls[nvp->nvp_nitems - 1];
		FUNC2(prev != NULL);

		tmpnvp = FUNC11(" ", NV_TYPE_NVLIST,
		    (uint64_t)(uintptr_t)nvl, 0, 0);
		if (tmpnvp == NULL) {
			goto fail;
		}
	}
	if (FUNC12(nvp, &nvl, sizeof(nvl), 0) == -1) {
		goto fail;
	}
	if (tmpnvp) {
		FUNC1(tmpnvp);
		FUNC8(prev, tmpnvp);
	}
	FUNC10(nvl, nvp);
	return (0);
fail:
	if (tmpnvp) {
		FUNC13(tmpnvp);
	}
	FUNC4(nvl);
	return (-1);
}