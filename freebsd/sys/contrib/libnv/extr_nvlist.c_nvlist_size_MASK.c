#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct nvlist_header {int dummy; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_11__ {scalar_t__ nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ NV_TYPE_NVLIST ; 
 scalar_t__ NV_TYPE_NVLIST_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,void**) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/  const*) ; 
 TYPE_1__** FUNC7 (int /*<<< orphan*/  const*,size_t*) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

size_t
FUNC13(const nvlist_t *nvl)
{
	const nvlist_t *tmpnvl;
	const nvlist_t * const *nvlarray;
	const nvpair_t *nvp, *tmpnvp;
	void *cookie;
	size_t size, nitems;
	unsigned int ii;

	FUNC0(nvl);
	FUNC1(nvl->nvl_error == 0);

	size = sizeof(struct nvlist_header);
	nvp = FUNC2(nvl);
	while (nvp != NULL) {
		size += FUNC8();
		size += FUNC12(FUNC9(nvp)) + 1;
		if (FUNC11(nvp) == NV_TYPE_NVLIST) {
			size += sizeof(struct nvlist_header);
			size += FUNC8() + 1;
			tmpnvl = FUNC6(nvp);
			FUNC1(tmpnvl->nvl_error == 0);
			tmpnvp = FUNC2(tmpnvl);
			if (tmpnvp != NULL) {
				nvl = tmpnvl;
				nvp = tmpnvp;
				continue;
			}
		} else if (FUNC11(nvp) == NV_TYPE_NVLIST_ARRAY) {
			nvlarray = FUNC7(nvp, &nitems);
			FUNC1(nitems > 0);

			size += (FUNC8() + 1) * nitems;
			size += sizeof(struct nvlist_header) * nitems;

			tmpnvl = NULL;
			tmpnvp = NULL;
			for (ii = 0; ii < nitems; ii++) {
				FUNC1(nvlarray[ii]->nvl_error == 0);
				tmpnvp = FUNC2(nvlarray[ii]);
				if (tmpnvp != NULL) {
					tmpnvl = nvlarray[ii];
					break;
				}
			}
			if (tmpnvp != NULL) {
				nvp = tmpnvp;
				nvl = tmpnvl;
				continue;
			}

		} else {
			size += FUNC10(nvp);
		}

		while ((nvp = FUNC5(nvl, nvp)) == NULL) {
			do {
				cookie = NULL;
				nvl = FUNC3(nvl, &cookie);
				if (nvl == NULL)
					goto out;
				if (FUNC4(nvl) && cookie == NULL) {
					nvp = FUNC2(nvl);
				} else {
					nvp = cookie;
				}
			} while (nvp == NULL);
			if (FUNC4(nvl) && cookie == NULL)
				break;
		}
	}

out:
	return (size);
}