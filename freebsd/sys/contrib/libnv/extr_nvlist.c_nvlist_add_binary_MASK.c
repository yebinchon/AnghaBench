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
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,void const*,size_t) ; 

void
FUNC5(nvlist_t *nvl, const char *name, const void *value,
    size_t size)
{
	nvpair_t *nvp;

	if (FUNC2(nvl) != 0) {
		FUNC1(FUNC2(nvl));
		return;
	}

	nvp = FUNC4(name, value, size);
	if (nvp == NULL) {
		nvl->nvl_error = FUNC0(ENOMEM);
		FUNC1(nvl->nvl_error);
	} else {
		(void)FUNC3(nvl, nvp);
	}
}