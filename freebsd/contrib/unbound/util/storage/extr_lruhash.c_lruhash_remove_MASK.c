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
struct lruhash_entry {int /*<<< orphan*/  key; void* data; int /*<<< orphan*/  lock; } ;
struct lruhash_bin {int /*<<< orphan*/  lock; } ;
struct lruhash {size_t size_mask; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* deldatafunc ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* delkeyfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* markdelfunc ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; scalar_t__ (* sizefunc ) (int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  space_used; int /*<<< orphan*/  num; struct lruhash_bin* array; int /*<<< orphan*/  compfunc; } ;
typedef  size_t hashvalue_type ;

/* Variables and functions */
 struct lruhash_entry* FUNC0 (struct lruhash*,struct lruhash_bin*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct lruhash_bin*,struct lruhash_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (void*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__ (*) (int /*<<< orphan*/ ,void*)) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct lruhash*,struct lruhash_entry*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,int /*<<< orphan*/ ) ; 

void 
FUNC17(struct lruhash* table, hashvalue_type hash, void* key)
{
	struct lruhash_entry* entry;
	struct lruhash_bin* bin;
	void *d;
	FUNC2(FUNC7(table->sizefunc));
	FUNC2(FUNC5(table->delkeyfunc));
	FUNC2(FUNC4(table->deldatafunc));
	FUNC2(FUNC3(table->compfunc));
	FUNC2(FUNC6(table->markdelfunc));

	FUNC8(&table->lock);
	bin = &table->array[hash & table->size_mask];
	FUNC8(&bin->lock);
	if((entry=FUNC0(table, bin, hash, key))) {
		FUNC1(bin, entry);
		FUNC12(table, entry);
	} else {
		FUNC9(&table->lock);
		FUNC9(&bin->lock);
		return;
	}
	table->num--;
	table->space_used -= (*table->sizefunc)(entry->key, entry->data);
	FUNC9(&table->lock);
	FUNC11(&entry->lock);
	if(table->markdelfunc)
		(*table->markdelfunc)(entry->key);
	FUNC10(&entry->lock);
	FUNC9(&bin->lock);
	/* finish removal */
	d = entry->data;
	(*table->delkeyfunc)(entry->key, table->cb_arg);
	(*table->deldatafunc)(d, table->cb_arg);
}