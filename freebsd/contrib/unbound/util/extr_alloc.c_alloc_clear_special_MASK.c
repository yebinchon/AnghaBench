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
struct alloc_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  super; scalar_t__ num_quar; scalar_t__ quar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alloc_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct alloc_cache* alloc)
{
	if(!alloc->super) {
		FUNC1(&alloc->lock);
	}
	FUNC0(alloc);
	alloc->quar = 0;
	alloc->num_quar = 0;
	if(!alloc->super) {
		FUNC2(&alloc->lock);
	}
}