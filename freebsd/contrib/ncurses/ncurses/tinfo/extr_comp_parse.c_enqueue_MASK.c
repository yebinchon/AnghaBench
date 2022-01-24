#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* last; } ;
typedef  TYPE_1__ ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NO_MEMORY ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* _nc_tail ; 

__attribute__((used)) static void
FUNC2(ENTRY * ep)
/* add an entry to the in-core list */
{
    ENTRY *newp = FUNC0(ep);

    if (newp == 0)
	FUNC1(MSG_NO_MEMORY);

    newp->last = _nc_tail;
    _nc_tail = newp;

    newp->next = 0;
    if (newp->last)
	newp->last->next = newp;
}