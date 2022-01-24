#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  extent_hooks_t ;
struct TYPE_6__ {int /*<<< orphan*/  mtx; } ;
typedef  TYPE_1__ background_thread_info_t ;
struct TYPE_7__ {int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ arena_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ have_background_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

extent_hooks_t *
FUNC5(tsd_t *tsd, arena_t *arena, extent_hooks_t *extent_hooks) {
	background_thread_info_t *info;
	if (have_background_thread) {
		info = FUNC0(arena);
		FUNC2(FUNC4(tsd), &info->mtx);
	}
	extent_hooks_t *ret = FUNC1(arena->base, extent_hooks);
	if (have_background_thread) {
		FUNC3(FUNC4(tsd), &info->mtx);
	}

	return ret;
}