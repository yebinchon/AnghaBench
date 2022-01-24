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
struct lruhash_entry {struct lruhash_entry* overflow_next; } ;
struct lruhash {int num; int space_used; size_t size; int size_mask; int /*<<< orphan*/  lock; TYPE_1__* array; scalar_t__ space_max; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct lruhash_entry* overflow_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void 
FUNC3(struct lruhash* table, const char* id, int extended)
{
	FUNC0(&table->lock);
	FUNC2("%s: %u entries, memory %u / %u",
		id, (unsigned)table->num, (unsigned)table->space_used,
		(unsigned)table->space_max);
	FUNC2("  itemsize %u, array %u, mask %d",
		(unsigned)(table->num? table->space_used/table->num : 0),
		(unsigned)table->size, table->size_mask);
	if(extended) {
		size_t i;
		int min=(int)table->size*2, max=-2;
		for(i=0; i<table->size; i++) {
			int here = 0;
			struct lruhash_entry *en;
			FUNC0(&table->array[i].lock);
			en = table->array[i].overflow_list;
			while(en) {
				here ++;
				en = en->overflow_next;
			}
			FUNC1(&table->array[i].lock);
			if(extended >= 2)
				FUNC2("bin[%d] %d", (int)i, here);
			if(here > max) max = here;
			if(here < min) min = here;
		}
		FUNC2("  bin min %d, avg %.2lf, max %d", min, 
			(double)table->num/(double)table->size, max);
	}
	FUNC1(&table->lock);
}