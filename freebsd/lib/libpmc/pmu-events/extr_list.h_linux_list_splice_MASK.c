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

/* Variables and functions */
 scalar_t__ FUNC0 (struct list_head const*) ; 

__attribute__((used)) static inline void
FUNC1(const struct list_head *list, struct list_head *prev,
    struct list_head *next)
{
	struct list_head *first;
	struct list_head *last;

	if (FUNC0(list))
		return;
	first = list->next;
	last = list->prev;
	first->prev = prev;
	prev->next = first;
	last->next = next;
	next->prev = last;
}