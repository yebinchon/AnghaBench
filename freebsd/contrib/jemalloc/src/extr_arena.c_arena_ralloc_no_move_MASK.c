#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
struct TYPE_2__ {size_t reg_size; } ;

/* Variables and functions */
 size_t LARGE_MAXCLASS ; 
 size_t LARGE_MINCLASS ; 
 size_t SMALL_MAXCLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* bin_infos ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 scalar_t__ FUNC5 (int) ; 
 size_t FUNC6 (size_t) ; 
 size_t FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (int) ; 

bool
FUNC9(tsdn_t *tsdn, void *ptr, size_t oldsize, size_t size,
    size_t extra, bool zero) {
	/* Calls with non-zero extra had to clamp extra. */
	FUNC1(extra == 0 || size + extra <= LARGE_MAXCLASS);

	if (FUNC8(size > LARGE_MAXCLASS)) {
		return true;
	}

	extent_t *extent = FUNC3(tsdn, ptr);
	size_t usize_min = FUNC6(size);
	size_t usize_max = FUNC6(size + extra);
	if (FUNC5(oldsize <= SMALL_MAXCLASS && usize_min <= SMALL_MAXCLASS)) {
		/*
		 * Avoid moving the allocation if the size class can be left the
		 * same.
		 */
		FUNC1(bin_infos[FUNC7(oldsize)].reg_size ==
		    oldsize);
		if ((usize_max > SMALL_MAXCLASS || FUNC7(usize_max) !=
		    FUNC7(oldsize)) && (size > oldsize || usize_max <
		    oldsize)) {
			return true;
		}

		FUNC0(tsdn, FUNC2(extent));
		return false;
	} else if (oldsize >= LARGE_MINCLASS && usize_max >= LARGE_MINCLASS) {
		return FUNC4(tsdn, extent, usize_min, usize_max,
		    zero);
	}

	return true;
}