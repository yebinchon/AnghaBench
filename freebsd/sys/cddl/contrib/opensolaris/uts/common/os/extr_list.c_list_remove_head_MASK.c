#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* list_next; } ;
struct TYPE_7__ {TYPE_2__ list_head; } ;
typedef  TYPE_1__ list_t ;
typedef  TYPE_2__ list_node_t ;

/* Variables and functions */
 void* FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void *
FUNC2(list_t *list)
{
	list_node_t *head = list->list_head.list_next;
	if (head == &list->list_head)
		return (NULL);
	FUNC1(head);
	return (FUNC0(list, head));
}