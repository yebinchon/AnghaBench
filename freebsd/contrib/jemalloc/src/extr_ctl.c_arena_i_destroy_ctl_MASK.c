#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_7__ {int initialized; } ;
typedef  TYPE_1__ ctl_arena_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_8__ {int /*<<< orphan*/  destroyed; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned int MALLCTL_ARENAS_DESTROYED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t const*,size_t,void*,size_t*,void*,size_t,unsigned int*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_1__* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int) ; 
 TYPE_4__* ctl_arenas ; 
 int /*<<< orphan*/  destroyed_link ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(tsd_t *tsd, const size_t *mib, size_t miblen, void *oldp,
    size_t *oldlenp, void *newp, size_t newlen) {
	int ret;
	unsigned arena_ind;
	arena_t *arena;
	ctl_arena_t *ctl_darena, *ctl_arena;

	ret = FUNC2(tsd, mib, miblen, oldp, oldlenp,
	    newp, newlen, &arena_ind, &arena);
	if (ret != 0) {
		goto label_return;
	}

	if (FUNC3(arena, false) != 0 || FUNC3(arena,
	    true) != 0) {
		ret = EFAULT;
		goto label_return;
	}

	FUNC6(tsd, arena_ind);
	/* Merge stats after resetting and purging arena. */
	FUNC4(tsd, arena);
	FUNC0(FUNC12(tsd), arena, false, true);
	ctl_darena = FUNC7(MALLCTL_ARENAS_DESTROYED);
	ctl_darena->initialized = true;
	FUNC9(FUNC12(tsd), arena, ctl_darena, arena_ind, true);
	/* Destroy arena. */
	FUNC1(tsd, arena);
	ctl_arena = FUNC7(arena_ind);
	ctl_arena->initialized = false;
	/* Record arena index for later recycling via arenas.create. */
	FUNC10(ctl_arena, destroyed_link);
	FUNC11(&ctl_arenas->destroyed, ctl_arena, destroyed_link);
	FUNC5(tsd, arena_ind);

	FUNC8(ret == 0);
label_return:
	return ret;
}