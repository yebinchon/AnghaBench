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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  nstime_t ;
typedef  int /*<<< orphan*/  extents_t ;
typedef  int /*<<< orphan*/  arena_t ;
struct TYPE_6__ {size_t nunpurged; } ;
typedef  TYPE_1__ arena_decay_t ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(tsdn_t *tsdn, arena_t *arena, arena_decay_t *decay,
    extents_t *extents, const nstime_t *time, bool is_background_thread) {
	size_t current_npages = FUNC4(extents);
	FUNC1(decay, time, current_npages);

	size_t npages_limit = FUNC0(decay);
	/* We may unlock decay->mtx when try_purge(). Finish logging first. */
	decay->nunpurged = (npages_limit > current_npages) ? npages_limit :
	    current_npages;

	if (!FUNC3() || is_background_thread) {
		FUNC2(tsdn, arena, decay, extents,
		    current_npages, npages_limit, is_background_thread);
	}
}