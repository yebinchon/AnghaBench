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
struct lruhash {size_t size; struct lruhash* array; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lruhash*,struct lruhash*) ; 
 int /*<<< orphan*/  FUNC1 (struct lruhash*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void 
FUNC3(struct lruhash* table)
{
	size_t i;
	if(!table)
		return;
	/* delete lock on hashtable to force check its OK */
	FUNC2(&table->lock);
	for(i=0; i<table->size; i++)
		FUNC0(table, &table->array[i]);
	FUNC1(table->array);
	FUNC1(table);
}