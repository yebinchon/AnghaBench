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
typedef  scalar_t__ dss_prec_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ dss_prec_primary ; 
 scalar_t__ dss_prec_secondary ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,size_t,int*,int*) ; 
 void* FUNC2 (void*,size_t,size_t,int*,int*) ; 
 scalar_t__ have_dss ; 

__attribute__((used)) static void *
FUNC3(tsdn_t *tsdn, arena_t *arena, void *new_addr, size_t size,
    size_t alignment, bool *zero, bool *commit, dss_prec_t dss_prec) {
	void *ret;

	FUNC0(size != 0);
	FUNC0(alignment != 0);

	/* "primary" dss. */
	if (have_dss && dss_prec == dss_prec_primary && (ret =
	    FUNC1(tsdn, arena, new_addr, size, alignment, zero,
	    commit)) != NULL) {
		return ret;
	}
	/* mmap. */
	if ((ret = FUNC2(new_addr, size, alignment, zero, commit))
	    != NULL) {
		return ret;
	}
	/* "secondary" dss. */
	if (have_dss && dss_prec == dss_prec_secondary && (ret =
	    FUNC1(tsdn, arena, new_addr, size, alignment, zero,
	    commit)) != NULL) {
		return ret;
	}

	/* All strategies for allocation failed. */
	return NULL;
}