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
struct lruhash_entry {int hash; struct lruhash_entry* overflow_next; } ;
struct lruhash_bin {int /*<<< orphan*/  lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {int size_mask; size_t size; TYPE_1__* array; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct lruhash_entry* overflow_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void 
FUNC2(struct lruhash* table, struct lruhash_bin* newa, 
	int newmask)
{
	size_t i;
	struct lruhash_entry *p, *np;
	struct lruhash_bin* newbin;
	/* move entries to new table. Notice that since hash x is mapped to
	 * bin x & mask, and new mask uses one more bit, so all entries in
	 * one bin will go into the old bin or bin | newbit */
#ifndef THREADS_DISABLED
	int newbit = newmask - table->size_mask;
#endif
	/* so, really, this task could also be threaded, per bin. */
	/* LRU list is not changed */
	for(i=0; i<table->size; i++)
	{
		FUNC0(&table->array[i].lock);
		p = table->array[i].overflow_list;
		/* lock both destination bins */
		FUNC0(&newa[i].lock);
		FUNC0(&newa[newbit|i].lock);
		while(p) {
			np = p->overflow_next;
			/* link into correct new bin */
			newbin = &newa[p->hash & newmask];
			p->overflow_next = newbin->overflow_list;
			newbin->overflow_list = p;
			p=np;
		}
		FUNC1(&newa[i].lock);
		FUNC1(&newa[newbit|i].lock);
		FUNC1(&table->array[i].lock);
	}
}