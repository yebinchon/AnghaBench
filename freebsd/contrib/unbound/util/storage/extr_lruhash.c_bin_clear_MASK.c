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
struct lruhash_entry {int /*<<< orphan*/  key; int /*<<< orphan*/  lock; void* data; struct lruhash_entry* overflow_next; } ;
struct lruhash_bin {int /*<<< orphan*/  lock; struct lruhash_entry* overflow_list; } ;
struct lruhash {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* deldatafunc ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* delkeyfunc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* markdelfunc ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct lruhash* table, struct lruhash_bin* bin)
{
	struct lruhash_entry* p, *np;
	void *d;
	FUNC0(&bin->lock);
	p = bin->overflow_list; 
	while(p) {
		FUNC3(&p->lock);
		np = p->overflow_next;
		d = p->data;
		if(table->markdelfunc)
			(*table->markdelfunc)(p->key);
		FUNC2(&p->lock);
		(*table->delkeyfunc)(p->key, table->cb_arg);
		(*table->deldatafunc)(d, table->cb_arg);
		p = np;
	}
	bin->overflow_list = NULL;
	FUNC1(&bin->lock);
}