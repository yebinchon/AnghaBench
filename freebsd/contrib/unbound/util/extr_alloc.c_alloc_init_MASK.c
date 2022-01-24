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
typedef  int uint64_t ;
struct alloc_cache {int thread_num; int next_id; int last_id; int max_reg_blocks; int /*<<< orphan*/  lock; struct alloc_cache* super; int /*<<< orphan*/ * cleanup_arg; int /*<<< orphan*/ * cleanup; int /*<<< orphan*/ * reg_list; scalar_t__ num_reg_blocks; } ;

/* Variables and functions */
 int THRNUM_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct alloc_cache*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct alloc_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct alloc_cache*,int) ; 

void 
FUNC4(struct alloc_cache* alloc, struct alloc_cache* super,
	int thread_num)
{
	FUNC2(alloc, 0, sizeof(*alloc));
	alloc->super = super;
	alloc->thread_num = thread_num;
	alloc->next_id = (uint64_t)thread_num; 	/* in steps, so that type */
	alloc->next_id <<= THRNUM_SHIFT; 	/* of *_id is used. */
	alloc->last_id = 1; 			/* so no 64bit constants, */
	alloc->last_id <<= THRNUM_SHIFT; 	/* or implicit 'int' ops. */
	alloc->last_id -= 1; 			/* for compiler portability. */
	alloc->last_id |= alloc->next_id;
	alloc->next_id += 1;			/* because id=0 is special. */
	alloc->max_reg_blocks = 100;
	alloc->num_reg_blocks = 0;
	alloc->reg_list = NULL;
	alloc->cleanup = NULL;
	alloc->cleanup_arg = NULL;
	if(alloc->super)
		FUNC3(alloc, alloc->max_reg_blocks);
	if(!alloc->super) {
		FUNC1(&alloc->lock);
		FUNC0(&alloc->lock, alloc, sizeof(*alloc));
	}
}