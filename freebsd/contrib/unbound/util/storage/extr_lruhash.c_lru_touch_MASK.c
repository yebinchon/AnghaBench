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
struct lruhash_entry {int dummy; } ;
struct lruhash {struct lruhash_entry* lru_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct lruhash*,struct lruhash_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct lruhash*,struct lruhash_entry*) ; 

void 
FUNC3(struct lruhash* table, struct lruhash_entry* entry)
{
	FUNC0(table && entry);
	if(entry == table->lru_start)
		return; /* nothing to do */
	/* remove from current lru position */
	FUNC2(table, entry);
	/* add at front */
	FUNC1(table, entry);
}