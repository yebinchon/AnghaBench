#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_13__ {scalar_t__ tv_sec; } ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  l_name; int /*<<< orphan*/  r_name; } ;
struct TYPE_11__ {scalar_t__ time; TYPE_2__ request; struct TYPE_11__* next; } ;
typedef  TYPE_1__ TABLE_ENTRY ;
typedef  TYPE_2__ CTL_MSG ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC_FAST ; 
 scalar_t__ LEAVE_INVITE ; 
 scalar_t__ MAX_LIFE ; 
 TYPE_1__* NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* table ; 
 TYPE_3__ ts ; 

CTL_MSG *
FUNC4(CTL_MSG *request)
{
	TABLE_ENTRY *ptr, *next;
	time_t current_time;

	FUNC0(CLOCK_MONOTONIC_FAST, &ts);
	current_time = ts.tv_sec;
	if (debug)
		FUNC2("find_match", request);
	for (ptr = table; ptr != NIL; ptr = next) {
		next = ptr->next;
		if ((ptr->time - current_time) > MAX_LIFE) {
			/* the entry is too old */
			if (debug)
				FUNC2("deleting expired entry",
				    &ptr->request);
			FUNC1(ptr);
			continue;
		}
		if (debug)
			FUNC2("", &ptr->request);
		if (FUNC3(request->l_name, ptr->request.r_name) == 0 &&
		    FUNC3(request->r_name, ptr->request.l_name) == 0 &&
		     ptr->request.type == LEAVE_INVITE)
			return (&ptr->request);
	}
	return ((CTL_MSG *)0);
}