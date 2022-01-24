#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_5__ {scalar_t__ nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int*,size_t) ; 

void
FUNC7(nvlist_t *nvl, const char *name, int *value,
    size_t nitems)
{
	nvpair_t *nvp;
	size_t i;

	if (FUNC4(nvl) != 0) {
		if (value != 0) {
			for (i = 0; i < nitems; i++)
				FUNC2(value[i]);
			FUNC3(value);
		}

		FUNC1(FUNC4(nvl));
		return;
	}

	nvp = FUNC6(name, value, nitems);
	if (nvp == NULL) {
		nvl->nvl_error = FUNC0(ENOMEM);
		FUNC1(nvl->nvl_error);
	} else {
		(void)FUNC5(nvl, nvp);
	}
}