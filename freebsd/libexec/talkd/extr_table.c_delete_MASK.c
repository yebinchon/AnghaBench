#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* last; struct TYPE_5__* next; int /*<<< orphan*/  request; } ;
typedef  TYPE_1__ TABLE_ENTRY ;

/* Variables and functions */
 TYPE_1__* NIL ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* table ; 

__attribute__((used)) static void
FUNC2(TABLE_ENTRY *ptr)
{

	if (debug)
		FUNC1("delete", &ptr->request);
	if (table == ptr)
		table = ptr->next;
	else if (ptr->last != NIL)
		ptr->last->next = ptr->next;
	if (ptr->next != NIL)
		ptr->next->last = ptr->last;
	FUNC0((char *)ptr);
}