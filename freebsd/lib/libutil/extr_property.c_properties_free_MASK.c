#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* properties ;
struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* name; struct TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

void
FUNC1(properties list)
{
    properties tmp;

    while (list) {
	tmp = list->next;
	if (list->name)
	    FUNC0(list->name);
	if (list->value)
	    FUNC0(list->value);
	FUNC0(list);
	list = tmp;
    }
}