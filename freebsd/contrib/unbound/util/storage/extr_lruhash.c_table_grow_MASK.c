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
struct lruhash_bin {int /*<<< orphan*/  lock; } ;
struct lruhash {int size_mask; int size; struct lruhash_bin* array; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lruhash_bin*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lruhash*,struct lruhash_bin*,int) ; 
 struct lruhash_bin* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lruhash_bin*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct lruhash_bin*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct lruhash_bin*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void 
FUNC8(struct lruhash* table)
{
	struct lruhash_bin* newa;
	int newmask;
	size_t i;
	if(table->size_mask == (int)(((size_t)-1)>>1)) {
		FUNC7("hash array malloc: size_t too small");
		return;
	}
	/* try to allocate new array, if not fail */
	newa = FUNC2(table->size*2, sizeof(struct lruhash_bin));
	if(!newa) {
		FUNC7("hash grow: malloc failed");
		/* continue with smaller array. Though its slower. */
		return;
	}
	FUNC0(newa, table->size*2);
	newmask = (table->size_mask << 1) | 1;
	FUNC1(table, newa, newmask);
	/* delete the old bins */
	FUNC6(&table->lock, table->array);
	for(i=0; i<table->size; i++) {
		FUNC5(&table->array[i].lock);
	}
	FUNC3(table->array);
	
	table->size *= 2;
	table->size_mask = newmask;
	table->array = newa;
	FUNC4(&table->lock, table->array, 
		table->size*sizeof(struct lruhash_bin));
	return;
}