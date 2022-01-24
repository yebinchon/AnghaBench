#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tcache_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 size_t LARGE_MAXCLASS ; 
 size_t LARGE_MINCLASS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,void*,size_t) ; 

void *
FUNC7(tsdn_t *tsdn, arena_t *arena, extent_t *extent, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache) {
	size_t oldusize = FUNC2(extent);

	/* The following should have been caught by callers. */
	FUNC0(usize > 0 && usize <= LARGE_MAXCLASS);
	/* Both allocation sizes must be large to avoid a move. */
	FUNC0(oldusize >= LARGE_MINCLASS && usize >= LARGE_MINCLASS);

	/* Try to avoid moving the allocation. */
	if (!FUNC5(tsdn, extent, usize, usize, zero)) {
		return FUNC1(extent);
	}

	/*
	 * usize and old size are different enough that we need to use a
	 * different size class.  In that case, fall back to allocating new
	 * space and copying.
	 */
	void *ret = FUNC4(tsdn, arena, usize, alignment,
	    zero);
	if (ret == NULL) {
		return NULL;
	}

	size_t copysize = (usize < oldusize) ? usize : oldusize;
	FUNC6(ret, FUNC1(extent), copysize);
	FUNC3(tsdn, FUNC1(extent), oldusize, tcache, NULL, true);
	return ret;
}