#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsdn_t ;
struct TYPE_3__ {scalar_t__ accumbytes; int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ prof_accum_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATOMIC_RELAXED ; 
 int /*<<< orphan*/  WITNESS_RANK_PROF_ACCUM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  malloc_mutex_rank_exclusive ; 

bool
FUNC3(tsdn_t *tsdn, prof_accum_t *prof_accum) {
	FUNC1(config_prof);

#ifndef JEMALLOC_ATOMIC_U64
	if (FUNC2(&prof_accum->mtx, "prof_accum",
	    WITNESS_RANK_PROF_ACCUM, malloc_mutex_rank_exclusive)) {
		return true;
	}
	prof_accum->accumbytes = 0;
#else
	atomic_store_u64(&prof_accum->accumbytes, 0, ATOMIC_RELAXED);
#endif
	return false;
}