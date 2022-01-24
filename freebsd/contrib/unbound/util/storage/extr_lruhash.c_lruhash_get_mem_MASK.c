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
struct lruhash_bin {int dummy; } ;
struct lruhash {int space_used; size_t size; int /*<<< orphan*/  lock; TYPE_1__* array; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

size_t
FUNC3(struct lruhash* table)
{
	size_t s;
	FUNC1(&table->lock);
	s = sizeof(struct lruhash) + table->space_used;
#ifdef USE_THREAD_DEBUG
	if(table->size != 0) {
		size_t i;
		for(i=0; i<table->size; i++)
			s += sizeof(struct lruhash_bin) + 
				lock_get_mem(&table->array[i].lock);
	}
#else /* no THREAD_DEBUG */
	if(table->size != 0)
		s += (table->size)*(sizeof(struct lruhash_bin) + 
			FUNC0(&table->array[0].lock));
#endif
	FUNC2(&table->lock);
	s += FUNC0(&table->lock);
	return s;
}