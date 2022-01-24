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
struct lruhash_entry {struct lruhash_entry* lru_next; struct lruhash_entry* lru_prev; } ;
struct lruhash {struct lruhash_entry* lru_end; struct lruhash_entry* lru_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lruhash*,struct lruhash_entry*) ; 

void
FUNC2(struct lruhash* table, struct lruhash_entry* entry)
{
	FUNC0(table && entry);
	if (entry == table->lru_end)
		return; /* nothing to do */
	/* remove from current lru position */
	FUNC1(table, entry);
	/* add at end */
	entry->lru_next = NULL;
	entry->lru_prev = table->lru_end;

	if (table->lru_end == NULL)
	{
		table->lru_start = entry;
	}
	else
	{
		table->lru_end->lru_next = entry;
	}
	table->lru_end = entry;
}