#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_7__ {scalar_t__ nvl_magic; int /*<<< orphan*/ * nvl_parent; int /*<<< orphan*/ * nvl_array_next; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(nvlist_t *nvl)
{
	nvpair_t *nvp;

	if (nvl == NULL)
		return;

	FUNC1();

	FUNC2(nvl);

	while ((nvp = FUNC4(nvl)) != NULL) {
		FUNC5(nvl, nvp);
		FUNC6(nvp);
	}
	if (nvl->nvl_array_next != NULL)
		FUNC7(nvl->nvl_array_next);
	nvl->nvl_array_next = NULL;
	nvl->nvl_parent = NULL;
	nvl->nvl_magic = 0;
	FUNC3(nvl);

	FUNC0();
}