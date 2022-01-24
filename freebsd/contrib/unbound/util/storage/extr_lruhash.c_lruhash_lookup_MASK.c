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
struct lruhash_entry {int /*<<< orphan*/  lock; } ;
struct lruhash_bin {int /*<<< orphan*/  lock; } ;
struct lruhash {size_t size_mask; int /*<<< orphan*/  lock; struct lruhash_bin* array; int /*<<< orphan*/  compfunc; } ;
typedef  size_t hashvalue_type ;

/* Variables and functions */
 struct lruhash_entry* FUNC0 (struct lruhash*,struct lruhash_bin*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct lruhash*,struct lruhash_entry*) ; 

struct lruhash_entry* 
FUNC8(struct lruhash* table, hashvalue_type hash, void* key, int wr)
{
	struct lruhash_entry* entry;
	struct lruhash_bin* bin;
	FUNC1(FUNC2(table->compfunc));

	FUNC3(&table->lock);
	bin = &table->array[hash & table->size_mask];
	FUNC3(&bin->lock);
	if((entry=FUNC0(table, bin, hash, key)))
		FUNC7(table, entry);
	FUNC4(&table->lock);

	if(entry) {
		if(wr)	{ FUNC6(&entry->lock); }
		else	{ FUNC5(&entry->lock); }
	}
	FUNC4(&bin->lock);
	return entry;
}