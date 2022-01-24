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
struct TYPE_10__ {scalar_t__ nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,TYPE_1__**,size_t) ; 

void
FUNC8(nvlist_t *nvl, const char *name, nvlist_t **value,
    size_t nitems)
{
	nvpair_t *nvp;
	size_t i;

	if (FUNC4(nvl) != 0) {
		if (value != NULL) {
			for (i = 0; i < nitems; i++) {
				if (FUNC5(value[i], NULL) == NULL)
					FUNC3(value[i]);
			}
		}
		FUNC2(value);
		FUNC1(FUNC4(nvl));
		return;
	}

	nvp = FUNC7(name, value, nitems);
	if (nvp == NULL) {
		nvl->nvl_error = FUNC0(ENOMEM);
		FUNC1(nvl->nvl_error);
	} else {
		(void)FUNC6(nvl, nvp);
	}
}