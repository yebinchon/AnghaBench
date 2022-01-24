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
struct lruhash_bin {int dummy; } ;
struct lruhash {size_t size; int size_mask; size_t space_max; struct lruhash* array; int /*<<< orphan*/  lock; scalar_t__ space_used; scalar_t__ num; int /*<<< orphan*/ * lru_end; int /*<<< orphan*/ * lru_start; void* cb_arg; int /*<<< orphan*/  deldatafunc; int /*<<< orphan*/  delkeyfunc; int /*<<< orphan*/  compfunc; int /*<<< orphan*/  sizefunc; } ;
typedef  int /*<<< orphan*/  lruhash_sizefunc_type ;
typedef  int /*<<< orphan*/  lruhash_delkeyfunc_type ;
typedef  int /*<<< orphan*/  lruhash_deldatafunc_type ;
typedef  int /*<<< orphan*/  lruhash_compfunc_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lruhash*,int) ; 
 struct lruhash* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lruhash*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lruhash*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct lruhash* 
FUNC6(size_t start_size, size_t maxmem,
	lruhash_sizefunc_type sizefunc, lruhash_compfunc_type compfunc,
	lruhash_delkeyfunc_type delkeyfunc,
	lruhash_deldatafunc_type deldatafunc, void* arg)
{
	struct lruhash* table = (struct lruhash*)FUNC1(1, 
		sizeof(struct lruhash));
	if(!table)
		return NULL;
	FUNC5(&table->lock);
	table->sizefunc = sizefunc;
	table->compfunc = compfunc;
	table->delkeyfunc = delkeyfunc;
	table->deldatafunc = deldatafunc;
	table->cb_arg = arg;
	table->size = start_size;
	table->size_mask = (int)(start_size-1);
	table->lru_start = NULL;
	table->lru_end = NULL;
	table->num = 0;
	table->space_used = 0;
	table->space_max = maxmem;
	table->array = FUNC1(table->size, sizeof(struct lruhash_bin));
	if(!table->array) {
		FUNC4(&table->lock);
		FUNC2(table);
		return NULL;
	}
	FUNC0(table->array, table->size);
	FUNC3(&table->lock, table, sizeof(*table));
	FUNC3(&table->lock, table->array, 
		table->size*sizeof(struct lruhash_bin));
	return table;
}