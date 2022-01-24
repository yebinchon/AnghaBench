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
struct lruhash_entry {int /*<<< orphan*/  key; void* data; struct lruhash_entry* overflow_next; int /*<<< orphan*/  lock; } ;
struct lruhash_bin {int /*<<< orphan*/  lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {size_t (* sizefunc ) (int /*<<< orphan*/ ,void*) ;size_t size_mask; scalar_t__ num; scalar_t__ space_used; scalar_t__ space_max; scalar_t__ size; int /*<<< orphan*/  (* deldatafunc ) (void*,void*) ;int /*<<< orphan*/  (* delkeyfunc ) (int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  lock; struct lruhash_bin* array; void* cb_arg; int /*<<< orphan*/  markdelfunc; int /*<<< orphan*/  compfunc; } ;
typedef  size_t hashvalue_type ;

/* Variables and functions */
 struct lruhash_entry* FUNC0 (struct lruhash*,struct lruhash_bin*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (void*,void*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,void*)) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (size_t (*) (int /*<<< orphan*/ ,void*)) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct lruhash*,struct lruhash_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct lruhash*,struct lruhash_entry**) ; 
 size_t FUNC12 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (void*,void*) ; 
 int /*<<< orphan*/  FUNC15 (struct lruhash*) ; 

struct lruhash_entry*
FUNC16(struct lruhash* table, hashvalue_type hash,
	struct lruhash_entry* entry, void* data, void* cb_arg)
{
	struct lruhash_bin* bin;
	struct lruhash_entry* found, *reclaimlist = NULL;
	size_t need_size;
	FUNC1(FUNC6(table->sizefunc));
	FUNC1(FUNC4(table->delkeyfunc));
	FUNC1(FUNC3(table->deldatafunc));
	FUNC1(FUNC2(table->compfunc));
	FUNC1(FUNC5(table->markdelfunc));
	need_size = table->sizefunc(entry->key, data);
	if (cb_arg == NULL) cb_arg = table->cb_arg;

	/* find bin */
	FUNC7(&table->lock);
	bin = &table->array[hash & table->size_mask];
	FUNC7(&bin->lock);

	/* see if entry exists already */
	if ((found = FUNC0(table, bin, hash, entry->key)) != NULL) {
		/* if so: keep the existing data - acquire a writelock */
		FUNC9(&found->lock);
	}
	else
	{
		/* if not: add to bin */
		entry->overflow_next = bin->overflow_list;
		bin->overflow_list = entry;
		FUNC10(table, entry);
		table->num++;
		table->space_used += need_size;
		/* return the entry that was presented, and lock it */
		found = entry;
		FUNC9(&found->lock);
	}
	FUNC8(&bin->lock);
	if (table->space_used > table->space_max)
		FUNC11(table, &reclaimlist);
	if (table->num >= table->size)
		FUNC15(table);
	FUNC8(&table->lock);

	/* finish reclaim if any (outside of critical region) */
	while (reclaimlist) {
		struct lruhash_entry* n = reclaimlist->overflow_next;
		void* d = reclaimlist->data;
		(*table->delkeyfunc)(reclaimlist->key, cb_arg);
		(*table->deldatafunc)(d, cb_arg);
		reclaimlist = n;
	}

	/* return the entry that was selected */
	return found;
}