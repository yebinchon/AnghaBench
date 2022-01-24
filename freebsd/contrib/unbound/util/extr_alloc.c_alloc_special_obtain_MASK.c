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
struct alloc_cache {TYPE_1__* super; int /*<<< orphan*/  num_quar; TYPE_2__* quar; } ;
struct TYPE_7__ {void* id; } ;
typedef  TYPE_2__ alloc_special_type ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  num_quar; TYPE_2__* quar; } ;

/* Variables and functions */
 void* FUNC0 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct alloc_cache*) ; 

alloc_special_type* 
FUNC9(struct alloc_cache* alloc)
{
	alloc_special_type* p;
	FUNC5(alloc);
	/* see if in local cache */
	if(alloc->quar) {
		p = alloc->quar;
		alloc->quar = FUNC2(p);
		alloc->num_quar--;
		p->id = FUNC0(alloc);
		return p;
	}
	/* see if in global cache */
	if(alloc->super) {
		/* could maybe grab alloc_max/2 entries in one go,
		 * but really, isn't that just as fast as this code? */
		FUNC3(&alloc->super->lock);
		if((p = alloc->super->quar)) {
			alloc->super->quar = FUNC2(p);
			alloc->super->num_quar--;
		}
		FUNC4(&alloc->super->lock);
		if(p) {
			p->id = FUNC0(alloc);
			return p;
		}
	}
	/* allocate new */
	FUNC8(alloc);
	if(!(p = (alloc_special_type*)FUNC7(sizeof(alloc_special_type)))) {
		FUNC6("alloc_special_obtain: out of memory");
		return NULL;
	}
	FUNC1(p);
	p->id = FUNC0(alloc);
	return p;
}