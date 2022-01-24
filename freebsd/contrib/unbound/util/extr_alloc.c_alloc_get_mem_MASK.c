#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct alloc_cache {int num_quar; size_t num_reg_blocks; int /*<<< orphan*/  lock; int /*<<< orphan*/  super; TYPE_2__* quar; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_1__ entry; } ;
typedef  TYPE_2__ alloc_special_type ;

/* Variables and functions */
 size_t ALLOC_REG_SIZE ; 
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

size_t FUNC4(struct alloc_cache* alloc)
{
	alloc_special_type* p;
	size_t s = sizeof(*alloc);
	if(!alloc->super) { 
		FUNC2(&alloc->lock); /* superalloc needs locking */
	}
	s += sizeof(alloc_special_type) * alloc->num_quar;
	for(p = alloc->quar; p; p = FUNC0(p)) {
		s += FUNC1(&p->entry.lock);
	}
	s += alloc->num_reg_blocks * ALLOC_REG_SIZE;
	if(!alloc->super) {
		FUNC3(&alloc->lock);
	}
	return s;
}