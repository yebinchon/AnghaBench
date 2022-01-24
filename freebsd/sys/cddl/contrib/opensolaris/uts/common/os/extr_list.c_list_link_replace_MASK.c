#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* list_prev; TYPE_1__* list_next; } ;
typedef  TYPE_3__ list_node_t ;
struct TYPE_8__ {TYPE_3__* list_next; } ;
struct TYPE_7__ {TYPE_3__* list_prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 

void
FUNC2(list_node_t *lold, list_node_t *lnew)
{
	FUNC0(FUNC1(lold));
	FUNC0(!FUNC1(lnew));

	lnew->list_next = lold->list_next;
	lnew->list_prev = lold->list_prev;
	lold->list_prev->list_next = lnew;
	lold->list_next->list_prev = lnew;
	lold->list_next = lold->list_prev = NULL;
}