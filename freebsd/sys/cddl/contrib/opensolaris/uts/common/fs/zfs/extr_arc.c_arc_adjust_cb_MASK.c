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
typedef  int /*<<< orphan*/  zthr_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  arc_adjust_lock ; 
 int arc_adjust_needed ; 
 int /*<<< orphan*/  arc_adjust_waiters_cv ; 
 int /*<<< orphan*/  arc_adjust_zthr ; 
 int /*<<< orphan*/  arc_c ; 
 int /*<<< orphan*/  arc_size ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg, zthr_t *zthr)
{
	uint64_t evicted = 0;

	/* Evict from cache */
	evicted = FUNC1();

	/*
	 * If evicted is zero, we couldn't evict anything
	 * via arc_adjust(). This could be due to hash lock
	 * collisions, but more likely due to the majority of
	 * arc buffers being unevictable. Therefore, even if
	 * arc_size is above arc_c, another pass is unlikely to
	 * be helpful and could potentially cause us to enter an
	 * infinite loop.  Additionally, zthr_iscancelled() is
	 * checked here so that if the arc is shutting down, the
	 * broadcast will wake any remaining arc adjust waiters.
	 */
	FUNC3(&arc_adjust_lock);
	arc_adjust_needed = !FUNC5(arc_adjust_zthr) &&
	    evicted > 0 && FUNC0(&arc_size, arc_c) > 0;
	if (!arc_adjust_needed) {
		/*
		 * We're either no longer overflowing, or we
		 * can't evict anything more, so we should wake
		 * up any waiters.
		 */
		FUNC2(&arc_adjust_waiters_cv);
	}
	FUNC4(&arc_adjust_lock);
}