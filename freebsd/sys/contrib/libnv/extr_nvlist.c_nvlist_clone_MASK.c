#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_10__ {scalar_t__ nvl_error; int nvl_flags; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int NV_FLAG_PUBLIC_MASK ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

nvlist_t *
FUNC8(const nvlist_t *nvl)
{
	nvlist_t *newnvl;
	nvpair_t *nvp, *newnvp;

	FUNC1(nvl);

	if (nvl->nvl_error != 0) {
		FUNC0(nvl->nvl_error);
		return (NULL);
	}

	newnvl = FUNC2(nvl->nvl_flags & NV_FLAG_PUBLIC_MASK);
	for (nvp = FUNC4(nvl); nvp != NULL;
	    nvp = FUNC6(nvl, nvp)) {
		newnvp = FUNC7(nvp);
		if (newnvp == NULL)
			break;
		(void)FUNC5(newnvl, newnvp);
	}
	if (nvp != NULL) {
		FUNC3(newnvl);
		return (NULL);
	}
	return (newnvl);
}