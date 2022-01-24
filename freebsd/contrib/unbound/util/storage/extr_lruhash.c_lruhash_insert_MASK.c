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
struct lruhash_entry {void* data; int /*<<< orphan*/  key; struct lruhash_entry* overflow_next; int /*<<< orphan*/  lock; } ;
struct lruhash_bin {int /*<<< orphan*/  lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {size_t (* sizefunc ) (int /*<<< orphan*/ ,void*) ;size_t size_mask; scalar_t__ num; size_t space_used; scalar_t__ space_max; scalar_t__ size; int /*<<< orphan*/  (* deldatafunc ) (void*,void*) ;int /*<<< orphan*/  (* delkeyfunc ) (int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  lock; struct lruhash_bin* array; void* cb_arg; int /*<<< orphan*/  markdelfunc; int /*<<< orphan*/  compfunc; } ;
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
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct lruhash*,struct lruhash_entry*) ; 
 int /*<<< orphan*/  FUNC12 (struct lruhash*,struct lruhash_entry*) ; 
 int /*<<< orphan*/  FUNC13 (struct lruhash*,struct lruhash_entry**) ; 
 size_t FUNC14 (int /*<<< orphan*/ ,void*) ; 
 size_t FUNC15 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC17 (void*,void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC19 (void*,void*) ; 
 int /*<<< orphan*/  FUNC20 (struct lruhash*) ; 

void 
FUNC21(struct lruhash* table, hashvalue_type hash,
        struct lruhash_entry* entry, void* data, void* cb_arg)
{
	struct lruhash_bin* bin;
	struct lruhash_entry* found, *reclaimlist=NULL;
	size_t need_size;
	FUNC1(FUNC6(table->sizefunc));
	FUNC1(FUNC4(table->delkeyfunc));
	FUNC1(FUNC3(table->deldatafunc));
	FUNC1(FUNC2(table->compfunc));
	FUNC1(FUNC5(table->markdelfunc));
	need_size = table->sizefunc(entry->key, data);
	if(cb_arg == NULL) cb_arg = table->cb_arg;

	/* find bin */
	FUNC7(&table->lock);
	bin = &table->array[hash & table->size_mask];
	FUNC7(&bin->lock);

	/* see if entry exists already */
	if(!(found=FUNC0(table, bin, hash, entry->key))) {
		/* if not: add to bin */
		entry->overflow_next = bin->overflow_list;
		bin->overflow_list = entry;
		FUNC11(table, entry);
		table->num++;
		table->space_used += need_size;
	} else {
		/* if so: update data - needs a writelock */
		table->space_used += need_size -
			(*table->sizefunc)(found->key, found->data);
		(*table->delkeyfunc)(entry->key, cb_arg);
		FUNC12(table, found);
		FUNC10(&found->lock);
		(*table->deldatafunc)(found->data, cb_arg);
		found->data = data;
		FUNC9(&found->lock);
	}
	FUNC8(&bin->lock);
	if(table->space_used > table->space_max)
		FUNC13(table, &reclaimlist);
	if(table->num >= table->size)
		FUNC20(table);
	FUNC8(&table->lock);

	/* finish reclaim if any (outside of critical region) */
	while(reclaimlist) {
		struct lruhash_entry* n = reclaimlist->overflow_next;
		void* d = reclaimlist->data;
		(*table->delkeyfunc)(reclaimlist->key, cb_arg);
		(*table->deldatafunc)(d, cb_arg);
		reclaimlist = n;
	}
}