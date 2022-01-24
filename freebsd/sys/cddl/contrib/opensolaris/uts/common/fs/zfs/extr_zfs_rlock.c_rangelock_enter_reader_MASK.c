#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  rl_lock; int /*<<< orphan*/  rl_tree; } ;
typedef  TYPE_1__ rangelock_t ;
struct TYPE_12__ {scalar_t__ lr_offset; scalar_t__ lr_length; scalar_t__ lr_type; int /*<<< orphan*/  lr_read_cv; void* lr_read_wanted; scalar_t__ lr_write_wanted; } ;
typedef  TYPE_2__ locked_range_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;
typedef  int /*<<< orphan*/  avl_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVL_AFTER ; 
 int /*<<< orphan*/  AVL_BEFORE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  CV_DEFAULT ; 
 scalar_t__ RL_WRITER ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(rangelock_t *rl, locked_range_t *new)
{
	avl_tree_t *tree = &rl->rl_tree;
	locked_range_t *prev, *next;
	avl_index_t where;
	uint64_t off = new->lr_offset;
	uint64_t len = new->lr_length;

	/*
	 * Look for any writer locks in the range.
	 */
retry:
	prev = FUNC1(tree, new, &where);
	if (prev == NULL)
		prev = (locked_range_t *)FUNC2(tree, where, AVL_BEFORE);

	/*
	 * Check the previous range for a writer lock overlap.
	 */
	if (prev && (off < prev->lr_offset + prev->lr_length)) {
		if ((prev->lr_type == RL_WRITER) || (prev->lr_write_wanted)) {
			if (!prev->lr_read_wanted) {
				FUNC3(&prev->lr_read_cv,
				    NULL, CV_DEFAULT, NULL);
				prev->lr_read_wanted = B_TRUE;
			}
			FUNC4(&prev->lr_read_cv, &rl->rl_lock);
			goto retry;
		}
		if (off + len < prev->lr_offset + prev->lr_length)
			goto got_lock;
	}

	/*
	 * Search through the following ranges to see if there's
	 * write lock any overlap.
	 */
	if (prev != NULL)
		next = FUNC0(tree, prev);
	else
		next = (locked_range_t *)FUNC2(tree, where, AVL_AFTER);
	for (; next != NULL; next = FUNC0(tree, next)) {
		if (off + len <= next->lr_offset)
			goto got_lock;
		if ((next->lr_type == RL_WRITER) || (next->lr_write_wanted)) {
			if (!next->lr_read_wanted) {
				FUNC3(&next->lr_read_cv,
				    NULL, CV_DEFAULT, NULL);
				next->lr_read_wanted = B_TRUE;
			}
			FUNC4(&next->lr_read_cv, &rl->rl_lock);
			goto retry;
		}
		if (off + len <= next->lr_offset + next->lr_length)
			goto got_lock;
	}

got_lock:
	/*
	 * Add the read lock, which may involve splitting existing
	 * locks and bumping ref counts (r_count).
	 */
	FUNC5(tree, new, prev, where);
}