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
struct alloc_cache {scalar_t__ num_quar; int /*<<< orphan*/  lock; scalar_t__ super; int /*<<< orphan*/ * quar; } ;
typedef  int /*<<< orphan*/  alloc_special_type ;

/* Variables and functions */
 scalar_t__ ALLOC_SPECIAL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct alloc_cache*,int /*<<< orphan*/ *) ; 

void 
FUNC6(struct alloc_cache* alloc, alloc_special_type* mem)
{
	FUNC4(alloc);
	if(!mem)
		return;
	if(!alloc->super) { 
		FUNC2(&alloc->lock); /* superalloc needs locking */
	}

	FUNC1(mem);
	if(alloc->super && alloc->num_quar >= ALLOC_SPECIAL_MAX) {
		/* push it to the super structure */
		FUNC5(alloc, mem);
		return;
	}

	FUNC0(mem, alloc->quar);
	alloc->quar = mem;
	alloc->num_quar++;
	if(!alloc->super) {
		FUNC3(&alloc->lock);
	}
}