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
struct alloc_cache {TYPE_2__* quar; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
typedef  TYPE_2__ alloc_special_type ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct alloc_cache* alloc)
{
	alloc_special_type* p, *np;
	/* free */
	p = alloc->quar;
	while(p) {
		np = FUNC0(p);
		/* deinit special type */
		FUNC2(&p->entry.lock);
		FUNC1(p);
		p = np;
	}
}