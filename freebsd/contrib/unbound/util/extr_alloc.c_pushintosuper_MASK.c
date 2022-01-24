#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct alloc_cache {int num_quar; TYPE_1__* super; int /*<<< orphan*/ * quar; } ;
typedef  int /*<<< orphan*/  alloc_special_type ;
struct TYPE_2__ {int num_quar; int /*<<< orphan*/  lock; int /*<<< orphan*/ * quar; } ;

/* Variables and functions */
 int ALLOC_SPECIAL_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void 
FUNC5(struct alloc_cache* alloc, alloc_special_type* mem)
{
	int i;
	alloc_special_type *p = alloc->quar;
	FUNC4(*p);
	FUNC4(alloc && alloc->super && 
		alloc->num_quar >= ALLOC_SPECIAL_MAX);
	/* push ALLOC_SPECIAL_MAX/2 after mem */
	FUNC0(mem, alloc->quar);
	for(i=1; i<ALLOC_SPECIAL_MAX/2; i++) {
		p = FUNC1(p);
	}
	alloc->quar = FUNC1(p);
	alloc->num_quar -= ALLOC_SPECIAL_MAX/2;

	/* dump mem+list into the super quar list */
	FUNC2(&alloc->super->lock);
	FUNC0(p, alloc->super->quar);
	alloc->super->quar = mem;
	alloc->super->num_quar += ALLOC_SPECIAL_MAX/2 + 1;
	FUNC3(&alloc->super->lock);
	/* so 1 lock per mem+alloc/2 deletes */
}