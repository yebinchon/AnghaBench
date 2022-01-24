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
struct regional {scalar_t__ next; } ;
struct alloc_cache {scalar_t__ num_reg_blocks; struct regional* reg_list; scalar_t__ num_quar; int /*<<< orphan*/ * quar; TYPE_1__* super; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  alloc_special_type ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  num_quar; int /*<<< orphan*/ * quar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct regional*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void 
FUNC7(struct alloc_cache* alloc)
{
	alloc_special_type* p;
	struct regional* r, *nr;
	if(!alloc)
		return;
	if(!alloc->super) {
		FUNC4(&alloc->lock);
	}
	if(alloc->super && alloc->quar) {
		/* push entire list into super */
		p = alloc->quar;
		while(FUNC2(p)) /* find last */
			p = FUNC2(p);
		FUNC5(&alloc->super->lock);
		FUNC1(p, alloc->super->quar);
		alloc->super->quar = alloc->quar;
		alloc->super->num_quar += alloc->num_quar;
		FUNC6(&alloc->super->lock);
	} else {
		FUNC0(alloc);
	}
	alloc->quar = 0;
	alloc->num_quar = 0;
	r = alloc->reg_list;
	while(r) {
		nr = (struct regional*)r->next;
		FUNC3(r);
		r = nr;
	}
	alloc->reg_list = NULL;
	alloc->num_reg_blocks = 0;
}