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
struct lruhash {size_t size; int /*<<< orphan*/  lock; scalar_t__ space_used; scalar_t__ num; int /*<<< orphan*/ * lru_end; int /*<<< orphan*/ * lru_start; int /*<<< orphan*/ * array; int /*<<< orphan*/  markdelfunc; int /*<<< orphan*/  deldatafunc; int /*<<< orphan*/  delkeyfunc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lruhash*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct lruhash* table)
{
	size_t i;
	if(!table)
		return;
	FUNC1(FUNC3(table->delkeyfunc));
	FUNC1(FUNC2(table->deldatafunc));
	FUNC1(FUNC4(table->markdelfunc));

	FUNC5(&table->lock);
	for(i=0; i<table->size; i++) {
		FUNC0(table, &table->array[i]);
	}
	table->lru_start = NULL;
	table->lru_end = NULL;
	table->num = 0;
	table->space_used = 0;
	FUNC6(&table->lock);
}