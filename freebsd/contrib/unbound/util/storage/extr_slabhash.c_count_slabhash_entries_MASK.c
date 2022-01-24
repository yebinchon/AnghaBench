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
struct slabhash {size_t size; TYPE_1__** array; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

size_t FUNC2(struct slabhash* sh)
{
	size_t slab, cnt = 0;

	for(slab=0; slab<sh->size; slab++) {
		FUNC0(&sh->array[slab]->lock);
		cnt += sh->array[slab]->num;
		FUNC1(&sh->array[slab]->lock);
	}
	return cnt;
}