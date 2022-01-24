#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_7__ {int /*<<< orphan*/ * arena; } ;
typedef  TYPE_1__ tcache_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_8__ {int /*<<< orphan*/ * avail; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int /*<<< orphan*/  TSDN_NULL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int stack_nelms ; 
 size_t FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,void*) ; 
 TYPE_3__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

bool
FUNC11(tsd_t *tsd) {
	tcache_t *tcache = FUNC9(tsd);
	FUNC2(FUNC8(tcache, 0)->avail == NULL);
	size_t size = stack_nelms * sizeof(void *);
	/* Avoid false cacheline sharing. */
	size = FUNC5(size, CACHELINE);

	void *avail_array = FUNC3(FUNC10(tsd), size, CACHELINE, true,
	    NULL, true, FUNC1(TSDN_NULL, 0, true));
	if (avail_array == NULL) {
		return true;
	}

	FUNC7(tsd, tcache, avail_array);
	/*
	 * Initialization is a bit tricky here.  After malloc init is done, all
	 * threads can rely on arena_choose and associate tcache accordingly.
	 * However, the thread that does actual malloc bootstrapping relies on
	 * functional tsd, and it can only rely on a0.  In that case, we
	 * associate its tcache to a0 temporarily, and later on
	 * arena_choose_hard() will re-associate properly.
	 */
	tcache->arena = NULL;
	arena_t *arena;
	if (!FUNC4()) {
		/* If in initialization, assign to a0. */
		arena = FUNC1(FUNC10(tsd), 0, false);
		FUNC6(FUNC10(tsd), tcache, arena);
	} else {
		arena = FUNC0(tsd, NULL);
		/* This may happen if thread.tcache.enabled is used. */
		if (tcache->arena == NULL) {
			FUNC6(FUNC10(tsd), tcache, arena);
		}
	}
	FUNC2(arena == tcache->arena);

	return false;
}