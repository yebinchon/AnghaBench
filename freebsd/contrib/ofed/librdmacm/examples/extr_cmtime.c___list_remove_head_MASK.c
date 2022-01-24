#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct list_head* next; } ;
struct work_list {TYPE_1__ list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 

__attribute__((used)) static inline struct list_head *FUNC1(struct work_list *work_list)
{
	struct list_head *list_item;
	
	list_item = work_list->list.next;
	FUNC0(list_item);
	return list_item;
}