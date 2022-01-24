#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_6__ {int nvl_flags; int /*<<< orphan*/  nvl_head; int /*<<< orphan*/  nvl_error; } ;
typedef  TYPE_1__ nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int NV_FLAG_NO_UNIQUE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 

void
FUNC8(nvlist_t *nvl, const nvpair_t *nvp)
{
	nvpair_t *newnvp;

	FUNC2(nvp);

	if (FUNC3(nvl) != 0) {
		FUNC1(FUNC3(nvl));
		return;
	}
	if ((nvl->nvl_flags & NV_FLAG_NO_UNIQUE) == 0) {
		if (FUNC4(nvl, FUNC7(nvp))) {
			nvl->nvl_error = EEXIST;
			FUNC1(FUNC3(nvl));
			return;
		}
	}

	newnvp = FUNC5(nvp);
	if (newnvp == NULL) {
		nvl->nvl_error = FUNC0(ENOMEM);
		FUNC1(FUNC3(nvl));
		return;
	}

	FUNC6(&nvl->nvl_head, newnvp, nvl);
}