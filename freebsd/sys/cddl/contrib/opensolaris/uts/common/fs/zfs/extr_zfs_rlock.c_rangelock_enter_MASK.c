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
typedef  scalar_t__ rangelock_type_t ;
struct TYPE_11__ {int /*<<< orphan*/  rl_lock; int /*<<< orphan*/  rl_tree; } ;
typedef  TYPE_1__ rangelock_t ;
struct TYPE_12__ {int lr_count; void* lr_read_wanted; void* lr_write_wanted; void* lr_proxy; scalar_t__ lr_type; scalar_t__ lr_length; scalar_t__ lr_offset; TYPE_1__* lr_rangelock; } ;
typedef  TYPE_2__ locked_range_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ RL_APPEND ; 
 scalar_t__ RL_READER ; 
 scalar_t__ RL_WRITER ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 

locked_range_t *
FUNC8(rangelock_t *rl, uint64_t off, uint64_t len,
    rangelock_type_t type)
{
	FUNC0(type == RL_READER || type == RL_WRITER || type == RL_APPEND);

	locked_range_t *new = FUNC3(sizeof (locked_range_t), KM_SLEEP);
	new->lr_rangelock = rl;
	new->lr_offset = off;
	if (len + off < off)	/* overflow */
		len = UINT64_MAX - off;
	new->lr_length = len;
	new->lr_count = 1; /* assume it's going to be in the tree */
	new->lr_type = type;
	new->lr_proxy = B_FALSE;
	new->lr_write_wanted = B_FALSE;
	new->lr_read_wanted = B_FALSE;

	FUNC4(&rl->rl_lock);
	if (type == RL_READER) {
		/*
		 * First check for the usual case of no locks
		 */
		if (FUNC2(&rl->rl_tree) == 0)
			FUNC1(&rl->rl_tree, new);
		else
			FUNC6(rl, new);
	} else
		FUNC7(rl, new); /* RL_WRITER or RL_APPEND */
	FUNC5(&rl->rl_lock);
	return (new);
}