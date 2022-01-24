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
struct ck_barrier_combining_group {int k; int /*<<< orphan*/  sense; int /*<<< orphan*/  count; struct ck_barrier_combining_group* parent; } ;
struct ck_barrier_combining {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ck_barrier_combining *barrier,
    struct ck_barrier_combining_group *tnode,
    unsigned int sense)
{

	/*
	 * If this is the last thread in the group, it moves on to the parent group.
	 * Otherwise, it spins on this group's sense.
	 */
	if (FUNC0(&tnode->count, 1) == tnode->k - 1) {
		/*
		 * If we are and will be the last thread entering the barrier for the
		 * current group then signal the parent group if one exists.
		 */
		if (tnode->parent != NULL)
			FUNC6(barrier, tnode->parent, sense);

		/*
		 * Once the thread returns from its parent(s), it reinitializes the group's
		 * arrival count and signals other threads to continue by flipping the group
		 * sense. Order of these operations is not important since we assume a static
		 * number of threads are members of a barrier for the lifetime of the barrier.
		 * Since count is explicitly reinitialized, it is guaranteed that at any point
		 * tnode->count is equivalent to tnode->k if and only if that many threads
		 * are at the barrier.
		 */
		FUNC5(&tnode->count, 0);
		FUNC2();
		FUNC5(&tnode->sense, ~tnode->sense);
	} else {
		while (sense != FUNC3(&tnode->sense))
			FUNC4();
	}
	FUNC1();

	return;
}