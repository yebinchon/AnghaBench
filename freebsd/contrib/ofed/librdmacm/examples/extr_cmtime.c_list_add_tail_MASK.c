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
struct list_head {struct list_head* prev; struct list_head* next; } ;
struct work_list {int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; struct list_head list; } ;

/* Variables and functions */
 int FUNC0 (struct work_list*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct work_list *work_list, struct list_head *req)
{
	int empty;
	FUNC2(&work_list->lock);
	empty = FUNC0(work_list);
	req->prev = work_list->list.prev;
	req->next = &work_list->list;
	req->prev->next = work_list->list.prev = req;
	FUNC3(&work_list->lock);
	if (empty)
		FUNC1(&work_list->cond);
}